// console.log("Hello World");

// const fs = require("fs");
// const path = require("path");

// fs.writeFileSync("node.txt", "hello this is node text file");
// fs.readFile("node.txt", "utf-8", (err, data) => {
//     if (!err) console.log(data);
// })

// fs.appendFileSync("node.txt", " hi dear how are you");

// // fs.unlinkSync("node.txt");



const http = require("http");

var courses = [
    { id: 1, name: "JS" }, { id: 2, name: "Node" }, { id: 3, name: "Flutter " },
]

http.createServer((req, res) => {
    console.log("Got a req", req.url)

    if (req.url === "/api/courses") {
        res.write(JSON.stringify(courses));
        res.end();
    }
    else if (req.url === "/api/users") {
        res.write(JSON.stringify(users));
        res.end();
    }
    else {
        res.write("<h1> Hello World </h1> <h2>" + req.url + "</h2>")
        res.end();
    }
})
    .listen(7000);






