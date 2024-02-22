const { json } = require('body-parser');
const mysql = require('mysql2');

const port = 3001;

// Create a MySQL connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'App',
  insecureAuth : true
});

// Connect to MySQL
db.connect((err) => {
  if (err) {
    console.error('Error connecting to MySQL:', err);
    return;
  }
  console.log('Connected to MySQL');
});

let sql =  `select * from app`;
function append(obj, key, value) {
  obj[key] = value;
}

let usernames = [];
db.execute(sql, function(err,result){
 if(err) throw err;
 let count = 0 ;
  console.log(result);
  // let str = json.toString(result);
  // console.log(str);
  // Loop through the array and extract usernames
   for (let i = 0; i < result.length; i++) {
  // append(username,result[i].id,result[i].username);
     usernames.push(result[i].username);
 }
  console.log(`${usernames} sent it to server`);
});

module.exports = usernames;

