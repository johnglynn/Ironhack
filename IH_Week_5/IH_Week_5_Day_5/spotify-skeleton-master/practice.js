$(document).ready(function(){
    $('#song_search').click(songSearch)
});



	var  songSearch = function(event){
		event.preventDefault();

		var searchTerm = $('.js_song_input').val();

		$.ajax({
			type:"GET",
			url:"https://api.spotify.com/v1/search?type=track&query=" + searchTerm,
			success: showInfo,
			error:handleError
		});

		$('.js_song_input').val("")

	}
	
	function showInfo(songResponse){

		$('js_title').empty();
		$('js_author').empty();
		$('js_cover').empty();


		console.log(songResponse)


		var title =  songResponse.tracks.items
		
		var html = 
		``
	}

function handleError (error) {
  console.log("Time to de-bug!");
  console.log(error.responseText);
}


<audio src="https://example.com/song.mp3" class="js-player"></audio>
$('.js-player').trigger('play');

//  may also be able to toggle class between playing

$('btn-play').on('click', function(){
  $('').trigger('play');
});




 // **********  SCRATCH PAD  ********** 

    if (isEven(count) === false) {
        $(this).animate({
            width: "260px"
        }, 1500);
    }
    // on even clicks do this
    else if (isEven(count) === true) {
        $(this).animate({
            width: "30px"
        }, 1500);
    }
});

 url: "https://api.spotify.com/v1/search?type=track&query=" + searchTerm,
                                //         |          |
                                //    Indicated by ?  -------------- Multiple values separated by &
    success: showInfo,
    error: handleError
  });


  $('.btn').onclick(('.calories').val,() ;




}
function showInfo(songResponse){
  $(".js-artist-list").empty();
  $(".js-albums-list").empty();
  console.log(songResponse)
  // songResponse.artists.items.forEach(function (artist) {
  //   createArtistHtml(artist);
  // });
}
//________________ERROR_____ ___________________________________________________________________
