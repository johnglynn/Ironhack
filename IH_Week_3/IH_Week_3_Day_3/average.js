var numbers = "80:70:90:100";
var individualNumbers = numbers.split(":")
// console.log(individualNumbers)
function average(individualNumbers){
	var sum = 0
	for (var i = 0; i < individualNumbers.length; i ++ ) {
		sum = sum + parseInt(individualNumbers[i]);
		// console.log(individualNumbers[i]	
	} 
	// console.log("sum= " + sum);
	var average = sum / individualNumbers.length;
	return average;
}

console.log(average(individualNumbers));