var fs = require('fs');

function sortEpisodes(episodes){
	var sortEp = episodes.sort( function(a, b){
		return a.episode_number-b.episode_number;	
	});
	return sortEp;
}

function stars(rating){
	var starRating = "";
	for (var i = 0; i < rating; i++){
		starRating = starRating + "*";
		// console.log("*");

	}
	return starRating;
}


function printEpisodes(episodes){

	episodes = sortEpisodes(episodes);
	episodes = filterEpisodes(episodes);

	for (var i = 0; i < episodes.length; i++) {
		console.log("Title: " + episodes[i].title);
		console.log("Description: " + episodes[i].description);
		console.log("Rating: " + episodes[i].rating + " " + stars(episodes[i].rating));
		console.log("Episode Number: " + episodes[i].episode_number);
	}
}

function filterEpisodes(episodes){



	var filteredEpisodes = episodes.filter(function(episode){
		return episode.rating >= 8.5;
	});
	return filteredEpisodes;
}




function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    // console.log(episodes[0].title);
	printEpisodes(episodes);
	// console.log(stars(100));	
	// console.log(sortEpisodes(episodes));			
}	


fs.readFile("./game.json", 'utf8', fileActions);