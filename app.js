const express = require('express');
const http = require('http');
const socketIO = require('socket.io');
const bodyParser = require('body-parser');
const usernames = require('./sql');

console.log(usernames);

const app = express();
const server = http.createServer(app);
const io = socketIO(server);

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

app.use(express.static(__dirname + '/public/'));

app.use((req, res, next) => {
  res.setHeader('X-Content-Type-Options', 'nosniff');
  next();
});

// app.get('/', (req, res) => {
//   res.sendFile(__dirname + './signup.html');
//   // console.log(res.json(usernames)) ;
// });

app.get('/signup',(req,res)=>{
  res.sendFile(__dirname+'/public/signup.html');
});

app.get('/index.html', (req, res) => {
  // res.setHeader('X-Content-Type-Options', 'nosniff');
  // const username = req.query.username || 'Guest';
  res.sendFile(__dirname + '/index.html');
  const username = req.query.username;
  console.log('Username :', username);
});


app.get('/users', (req, res) => {
    res.json(usernames);
});



io.on('connection', (socket) => {
  console.log('A user connected');

  socket.on('joinRoom', (room) => {
    socket.join(room.user);
    io.to(room.user).emit('message', ` ${room.username} has joined ${room.user} `);
  });

  socket.on('chatMessage', (data) => {
    // io.to(data.room).emit('message', `${data.username}${socket.id}: ${data.message}`);
    io.to(data.room).emit('message', `${data.username}: ${data.message}`);
    // console.log(username);
  });

  socket.on('disconnect', () => {
    console.log('User disconnected');
  });
});


const PORT = process.env.PORT || 3000;

server.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});

// const express = require('express');
// const http = require('http');
// const socketIO = require('socket.io');
// const bodyParser = require('body-parser');
// const usernames = require('./sql');

// const app = express();
// const server = http.createServer(app);
// const io = socketIO(server);

// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({ extended: true }));

// app.use(express.static(__dirname + '/public/'));

// app.use((req, res, next) => {
//   res.setHeader('X-Content-Type-Options', 'nosniff');
//   next();
// });

// app.get('/', (req, res) => {
//   res.sendFile(__dirname + '/signup.html');
// });

// app.get('/index.html', async (req, res) => {
//   try {
//     // const usernames = await fetchUsernames();
//     console.log(usernames);
//     res.json(usernames);
//   } catch (error) {
//     console.error('Error fetching usernames:', error);
//     res.status(500).json({ error: 'Error fetching usernames' });
//   }
// });

// app.get('/', (req, res) => {
//   res.sendFile(__dirname + '/signup.html');
// });

// io.on('connection', (socket) => {
//   console.log('A user connected');

//   socket.on('joinRoom', (room) => {
//     socket.join(room.user);
//     io.to(room.user).emit('message', ` A ${room.username} has joined ${room.user} `);
//   });

//   socket.on('chatMessage', (data) => {
//     io.to(data.room).emit('message', `${data.username}: ${data.message}`);
//   });

//   socket.on('disconnect', () => {
//     console.log('User disconnected');
//   });
// });

// const PORT = process.env.PORT || 3000;

// server.listen(PORT, () => {
//   console.log(`Server is running on http://localhost:${PORT}`);
// });
