var db = require('../db');
db.dbConnection.connect();


module.exports = {
  messages: {
    get: function (res) {
      var queryString = 'SELECT * FROM messages';
      db.dbConnection.query(queryString, function(err, rows, fields) {
        if (err) throw err;

        console.log('success!', rows);
      });
    }, // a function which produces all the messages
    post: function (data, res) {
      // var queryString = `INSERT INTO 'Messages' ('Roomname','Username','Date,'text') VALUES ('${data.roomname}', '${data.username}', '12', 'qwefeqw')`;
      // var queryString = `INSERT INTO 'Messages' ('Roomname') VALUES ('abc')`;
      var date = new Date();
      var queryString = `INSERT INTO Messages (Roomname, Username, text) VALUES ("${data.roomname}", "${data.username}", "${data.text}")`;


      db.dbConnection.query(queryString, function(err, rows, field) {
        if (err) throw err;

        console.log('success', rows);
      });
    } // a function which can be used to insert a message into the database
  },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
};

