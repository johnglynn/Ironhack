var sleep = require("./lib/sleep.js");

sleep(5, function (){
	console.log("5 seconds have ellapsed");
});



sleep(1, function() {
	colorsArray.forEach(function (theColor) {
		console.log(theColor.toUppercase());
	});
});