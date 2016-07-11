var read = require('read');



// function read()


options = {
    prompt: "Type something"
}
// Our options object, the prompt is simply what will appear in the command line when read is called

var i = 0;


read(options, displayInput);

// The prompt itself, passing options, and using our callback function after input

function displayInput (err, input){
    console.log("Your reply is: " + input);
	i += 1;
	
	if (i < 9) {
		read(options, displayInput);
	}
}
// Outputs whatever the user has entered back to the console

