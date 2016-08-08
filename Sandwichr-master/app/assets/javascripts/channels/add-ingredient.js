// $(document).on("turbolinks:load", function(){
// 	$(".js-add-ingredient").on("click", SandwichrApp.addIngredientToSandwich);
// });	

// SandwichrApp.addIngredientToSandwich = function(event){
// 	var apiData = {ingredient_id: 444 };

// 	$.ajax({
// 		type: "POST",
// 		url: "/api/sandwiches/9999/ingredients/add",
// 		data: apiData,
// 		success: SandwichrApp.updateIngredientList,
// 		error:SandwichrApp.handleError
// 	});
// };

// SandwichrApp.updateIngredientList = function(){
// 	console.log("added ingredient successfully");
// 	console.log(response);

// };

// SandwichrApp.handleError = function(error){
// 	console.log("Error adding ingredient");
// 	console.log(error.responseText);
// };
