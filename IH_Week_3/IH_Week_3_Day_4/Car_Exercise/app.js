"use strict";

var Car = require("./lib/car.js");

var audi = new Car ("Q7", "Brrrm", "4")

console.log( audi.noise );




// "use strict";

// var Animal = require("./lib/animal.js");

// var shadow = new Animal("Shadow", "Ruff");

// console.log( shadow.name );
// shadow.shout();
// shadow.makeNoise();


// var princess = new Animal("Princess", "Meow");

// console.log( princess.name );
// princess.shout();
// princess.makeNoise();

// lib/animal.js

// class Animal {
//   constructor (name, noise) {
//     this.name = name;
//     this.noise = noise;
//   }

//   shout () {
//     console.log("Mooooo!");
//   }

//   makeNoise () {
//     console.log(this.noise + "!!!!");
//   }
// }

// module.exports = Animal;


