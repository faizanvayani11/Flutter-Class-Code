// const express = require("express");
// const app = express();
// const { users, addUsers, updateUsers } = require("./users");



// app.use(express.json());



// app.get("/", (req, res) => {
//     res.send("Hello ExpressJs");
// })

// app.get("/users", (req, res) => {

//     res.json(users);
// });

// app.post("/users", (req, res) => {
//     console.log(req.body);
//     addUsers(req.body);
//     res.json(users);
// });

// app.post("/users", (req, res) => {
//     console.log(req.body);
//     addUsers(req.body);
//     res.json(users);
// });


// app.put("/users/:abc", (req, res) => {
//     console.log(req.params);
//     const { abc } = req.params;
//     updateUsers(abc, req.body);
//     res.send(JSON.stringify(users))
//     // res.json(users);
// });




// app.listen(1000, () => {
//     console.log("Server is running on $(1000)");
// });





const mongoose = require('mongoose')
const dbURL = "mongodb+srv://mfaizanvayani3000:5fEcFiU9iCcE7QB@cluster0.2akvuop.mongodb.net/?retryWrites=true&w=majority";


mongoose 
.connect(dbURL)
.then()