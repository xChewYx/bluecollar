console.log("hello")
var statik = require('statik');
console.log("poop")
console.log(statik)
statik({
    port: 3000,
    root: "./public"
});