var colorsArray = ["indigo", "black", "purple", "indigo", "indigo", "indigo", "magenta", "chartreuse", "chartreuse", "chartreuse", "scarlet"];

function countColors (color, the_array) {
	var counter;
	var colorOccurances = 0;

	for (counter = 0; counter < the_array.length; counter++) {
		var theColor = the_array[counter];

		if (theColor === color) {
			colorOccurances += 1;

		}
	}

	return colorOccurances;
}

console.log( countColors("indigo", colorsArray)=== 3);
console.log( countColors("chartreuse", colorsArray) === 4)
console.log( countColors("black", colorsArray) === 1)
console.log( countColors("pink", colorsArray) === 0)