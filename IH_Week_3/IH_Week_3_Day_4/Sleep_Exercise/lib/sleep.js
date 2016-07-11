function sleep (amountOfSeconds, theCallback) {
	setTimeout(function(){
		theCallback();
	}, amountOfSeconds * 1000);
}

module.exports = sleep;