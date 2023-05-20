let crypto = require('crypto');
let fs = require('fs');
let util = require('util');
let exec = util.promisify(require('child_process').exec);
let { 
  DB_MAIN__PORT_INTERNAL, 
  DB_MAIN__NAME_DB, 
  DB_MAIN__USER_DB, 
  DB_MAIN__PASSWORD_DB, 
  DB_MAIN__BACKUP_PATHS,
  DB_MAIN__BACKUP_REPORT_PATH,
  DB_MAIN__BACKUP_MESSAGING_FILE,
  WORKDIR_BASE,
  DB_MAIN__SERVICE,
  API__SERVICE,
} = process.env;


class Backup {
  constructor({ backupPaths, reportPath, messagingFilePath, rootPath, db }) {
    this.backupPaths = backupPaths;
    this.reportPath = reportPath;
    this.rootPath = rootPath;
    this.messagingFilePath = messagingFilePath;
    this.db = db;
  }
  backupPaths = {};
  reportPath = '';
  messagingFilePath = '';
  db = {};

  async init() {
    await this.createServiceFiles();
    await this.runWatch()
  }

  // Create service files
  async createServiceFiles() {
    await fs.promises.writeFile(this.reportPath, '', function (error) {
      if (error) throw error;
      console.log(`Creatad file: "${this.reportPath}"`);
    });
    
    await fs.promises.writeFile(this.messagingFilePath, '', function (error) {
      if (error) throw error;
      console.log(`Creatad file: "${this.messagingFilePath}"`);
    });
  }

  // Start tracking the file based on which the backup is started
  async runWatch() {
    let isBlockWatch = false;
    try {
      fs.watchFile(this.messagingFilePath, async (event, file) => {
        if(!isBlockWatch) {
          let dataWatch = await fs.promises.readFile(this.messagingFilePath, 'utf8');
          if(dataWatch === API__SERVICE) {
            isBlockWatch = true;
            await this.runProcessCreateBackup();
            isBlockWatch = false;
          }
        }
      });
    } catch(error) {
      await fs.promises.writeFile(this.reportPath, JSON.stringify({ error }), 'utf8');
      await fs.promises.writeFile(this.messagingFilePath, '', 'utf8');
      isBlockWatch = false;
      console.error(error);
    }
  }

  // Run process create backup
  async runProcessCreateBackup() {
    let reportData = {};
    try {
      await fs.promises.writeFile(this.messagingFilePath, DB_MAIN__SERVICE, 'utf8'); // Tells the API service that the backup is starting.
      await this.removeBackup();
      await this.createBackup();
      reportData = await this.createReportData();
    } catch(error) {
      reportData = { error };
      console.error(error);
    } finally {
      await fs.promises.writeFile(this.reportPath, JSON.stringify(reportData), 'utf8');
      await fs.promises.writeFile(this.messagingFilePath, '', 'utf8');
    }
  }


  // Remove backup
  async removeBackup() {
    if (fs.existsSync(this.backupPaths['db-empty'])) {
      await fs.promises.unlink(this.backupPaths['db-empty']);
    }
    if (fs.existsSync(this.backupPaths['db-data'])) {
      await fs.promises.unlink(this.backupPaths['db-data']);
    }
    if (fs.existsSync(this.backupPaths['translations-data'])) {
      await fs.promises.unlink(this.backupPaths['translations-data']);
    }
    if (fs.existsSync(this.backupPaths['db-backup'])) {
      await fs.promises.unlink(this.backupPaths['db-backup']);
    }
  }

  // Create backup
  async createBackup() {
    let query = `postgres://${this.db.user}:${this.db.password}@localhost:${this.db.port}/${this.db.nameDb}`;
    let dbEmpty = `pg_dump ${query} --schema-only> ${this.rootPath}/${this.backupPaths['db-empty']}`;
    let dbData =  `pg_dump ${query} > ${this.rootPath}/${this.backupPaths['db-data']}`;
    let translationsData = `pg_dump ${query} -t translations > ${this.rootPath}/${this.backupPaths['translations-data']}`;
    let backup = `pg_basebackup -U ${this.db.user} -D - -Ft -X fetch | bzip2 > ${this.rootPath}/${this.backupPaths['db-backup']}`;
    
    let { error, stderr, stdout } = await exec(`${dbEmpty} && ${dbData} && ${translationsData} && ${backup}`, { encoding: 'utf8' });
    if (error) throw error;
    if (stderr) throw error;
  }

  // Create report data
  async createReportData() {
    let dbDateStart = new Date().toISOString();
    let data = {};
    let filesPaths = Object.values(this.backupPaths);
    for await(let filePath of filesPaths) {
      let fileBuffer = await fs.promises.readFile(filePath);
      let sha256 = crypto
          .createHash('sha256')
          .update(fileBuffer)
          .digest('hex');
      let md5 = crypto
          .createHash('md5')
          .update(fileBuffer)
          .digest('hex');
      let stats = fs.statSync(filePath);
      data[filePath] = { sha256, md5, size: `${(stats.size / (1024 * 1000)).toFixed(2)}Mb` };
    }
    data.dbDateStart = dbDateStart;
    data.dbDateEnd = new Date().toISOString();
    return data;
  }
}
let backup = new Backup({ 
  backupPaths: JSON.parse(DB_MAIN__BACKUP_PATHS), 
  reportPath: DB_MAIN__BACKUP_REPORT_PATH, 
  messagingFilePath: DB_MAIN__BACKUP_MESSAGING_FILE, 
  rootPath: `${WORKDIR_BASE}/${DB_MAIN__SERVICE}`,
  db: {
    user: DB_MAIN__USER_DB,
    password: DB_MAIN__PASSWORD_DB,
    port: DB_MAIN__PORT_INTERNAL,
    nameDb: DB_MAIN__NAME_DB
  }
});

backup.init();

process.on('uncaughtException', function (error) {
  console.error(error);
});
