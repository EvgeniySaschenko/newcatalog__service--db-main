let crypto = require('crypto');
let fs = require('fs');
let util = require('util');
let exec = util.promisify(require('child_process').exec);
let { 
  DB_MAIN__PORT_INTERNAL, 
  DB_MAIN__NAME_DB, 
  DB_MAIN__USER_DB, 
  DB_MAIN__PASSWORD_DB, 
  DB_MAIN__PORT_BACKUP,
  // DB_MAIN__BACKUP_PATHS,
  // DB_MAIN__BACKUP_REPORT_PATH,
  // DB_MAIN__BACKUP_MESSAGING_FILE,
  WORKDIR_BASE,
  DB_MAIN__SERVICE,
  API__SERVICE,
} = process.env;

let { createServer } = require('node:http');
const hostname = '0.0.0.0';
const port = DB_MAIN__PORT_INTERNAL;
let server = createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end('Hello World');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});

process.on('uncaughtException', function (error) {
  console.error(error);
});
