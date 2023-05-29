const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
app.use(bodyParser.json());

app.use(cors({
  origin: '*'
}));

const port = 3000;

app.get('/', (req, res) => {
  res.send('API is working');
})

//Formulario User
app.post('/user',(req, res) => {
  const body = req.body;
  const query = `INSERT INTO user(userID, firstName, lastName, email, country, birthday, city, phone) VALUES ('${body.userID}', '${body.firstName}', '${body.lastName}', '${body.email}', '${body.country}', '${body.birthday}', '${body.city}', '${body.phone}');`;
  //connection.connect();
  connection.query( query, (err, rows, fields) => {
    if (err) throw err
    console.log('1 record inserted');
  })
  //connection.end();
  res.send('1 record inserted');
})

//Formulario Driver
app.post('/driver',(req, res) => {
  const body = req.body;
  const query = `INSERT INTO driver(driverID, firstName, lastName, email, country, birthday, city, phone) VALUES ('${body.driverID}', '${body.firstName}', '${body.lastName}', '${body.email}', '${body.country}', '${body.birthday}', '${body.city}', '${body.phone}');`;
  //connection.connect();
  connection.query( query, (err, rows, fields) => {
    if (err) throw err
    console.log('1 record inserted');
  })
  //connection.end();
  res.send('1 record inserted');
})

//Formulario Vehicle
app.post('/vehicle',(req, res) => {
  const body = req.body;
  const query = `INSERT INTO vehicle(vehicleID, driverID, plate, vehicleModel, vehicleManufacturedDate) VALUES ('${body.vehicleID}', '${body.driverID}', '${body.plate}', '${body.vehicleModel}', '${body.vehicleManufacturedDate}');`;
  //connection.connect();
  connection.query( query, (err, rows, fields) => {
    if (err) throw err
    console.log('1 record inserted');
  })
  //connection.end();
  res.send('1 record inserted');
})

//Formulario Payment
app.post('/payment',(req, res) => {
  const body = req.body;
  const query = `INSERT INTO payment(paymentID, userID, ammountPay, datePay, typePay) VALUES ('${body.paymentID}', '${body.userID}', '${body.ammountPay}', '${body.datePay}', '${body.typePay}');`;
  //connection.connect();
  connection.query( query, (err, rows, fields) => {
    if (err) throw err
    console.log('1 record inserted');
  })
  //connection.end();
  res.send('1 record inserted');
})

//Formulario Promotion
app.post('/promotion',(req, res) => {
  const body = req.body;
  const query = `INSERT INTO promotion(promotionID, userID, promoCode, datePromo, discountPromo, descriptionPromo) VALUES ('${body.promotionID}', '${body.userID}', '${body.promoCode}', '${body.datePromo}', '${body.discountPromo}', '${body.descriptionPromo}');`;
  //connection.connect();
  connection.query( query, (err, rows, fields) => {
    if (err) throw err
    console.log('1 record inserted');
  })
  //connection.end();
  res.send('1 record inserted');
})

//Formulario Rating
app.post('/rating',(req, res) => {
  const body = req.body;
  const query = `INSERT INTO rating(ratingID, userID, driverID, rating, ratingDescription) VALUES ('${body.ratingID}', '${body.userID}', '${body.driverID}', '${body.rating}', '${body.ratingDescription}');`;
  //connection.connect();
  connection.query( query, (err, rows, fields) => {
    if (err) throw err
    console.log('1 record inserted');
  })
  //connection.end();
  res.send('1 record inserted');
})

//Formulario Travel
app.post('/travel',(req, res) => {
  const body = req.body;
  const query = `INSERT INTO travel(travelID, userID, driverID, vehicleID, originPoint, destination, dateTrip, tripDuration, priceTrip) VALUES ('${body.travelID}', '${body.userID}', '${body.driverID}', '${body.vehicleID}', '${body.originPoint}', '${body.destination}', '${body.dateTrip}', '${body.tripDuration}', '${body.priceTrip}');`;
  //connection.connect();
  connection.query( query, (err, rows, fields) => {
    if (err) throw err
    console.log('1 record inserted');
  })
  //connection.end();
  res.send('1 record inserted');
})

app.listen(port, () => {
  console.log(`Project sample is running on: ${port}`)
})

const connection = mysql.createConnection({
  host: 'localhost',
  port: '3306',
  user: 'root',
  password: 'root123',
  database: 'db1'
})

connection.connect();