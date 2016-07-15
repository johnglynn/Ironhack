PokemonApp.Pokemon = class {

	// Place all the behaviors and hooks related to the matching controller here.
	// All this logic will automatically be available in application.js.

	constructor (pokemonUri){
		this.id = PokemonApp.idFromUri(pokemonUri);
}

render(){
	console.log("Rendering pokemon: #" + this.id);

	$.ajax({
		url: "/api/pokemon/" + this.id,
		success: function(response){
			console.log("Pokemon info:");
			console.log(response);

			// $(".js-pkmn-types").empty();

			// var pkmn_types = response.pkmn_types
			// pkmn_types.forEach(function(type){
			// 	var availableTypes = 

			// 	`${type.name + " "}`;

			// 	$(".js-pkmn-types").prepend(availableTypes);
			// });

			
			$(".js-pkmn-name").text(response.name);
			$(".js-pkmn-number").text(response.pkdx_id);
			$(".js-pkmn-height").text(response.height);
			$(".js-pkmn-weight").text(response.weight);
			$(".js-pkmn-HP").text(response.hp);
			$(".js-pkmn-attack").text(response.attack);
			$(".js-pkmn-defense").text(response.defense);
			$(".js-pkmn-sattack").text(response.sp_atk);
			$(".js-pkmn-sdefense").text(response.sp_def);
			$(".js-pkmn-speed").text(response.speed);
			// $(".js-pkmn-types").text(response.);

			$(".js-pokemon-modal").modal("show");

			var pokeSprite = response.sprites[0].resource_uri;

			$.ajax({
			  	type: "GET",
			  	url: pokeSprite,
			  	success: function(url){
			  		console.log(url);

			  		$(".js-sprite").empty();

			  		var sprite =
			  		`<img src= "http://pokeapi.co/${url.image}"
			  			class="result_img" alt="" height:'200' width: '200'>`;

			  			$(".js-sprite").prepend(sprite);
			  	}
			  });

			var pokeDescription = response.descriptions.reverse();
			var latestDescription = pokeDescription[0].resource_uri;

			$.ajax({
				type:"GET",
				url: latestDescription,
				success: function(response){

					$(".js-pkmn-description").empty();

			  		var description =
			  			`${response.description}`;


			  			$(".js-pkmn-description").prepend(description);


				}
			});


		}

	});
	};
}

PokemonApp.idFromUri = function(pokemonUri){  //     0      1       2        3     4
	var uriSegments = pokemonUri.split("/");  // [ "api", "v1", "pokemon", "160", ""]
	var secondLast = uriSegments.length - 2;  //  length 5
	return uriSegments[secondLast];			  //  second last = 3	
}



$(document).on("ready", function(){

	$(".js-show-pokemon").on("click", function(event){
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});

//   **********  SCRATCHPAD  

