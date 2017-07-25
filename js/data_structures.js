// two separate arrays



// console.log(colors);
// colors.push("charcoal");
// console.log(colors);

// console.log(names);
// names.push("Maggie Smith");
// console.log(names);

// declare an empty object
// Create a loop that sets the index to one, specifies how many times to loop through, accesses the array, pushes the data in the array to the obect, and then iterates to the next item in the index

var colors = ["periwinkle", "cyan", "raspberry", "marigold"];
var names = ["Chocolate Chip", "Beauty", "Fasty", "Lickety Split"];

function addHorses(names, colors){
  var horses = {};
  for (var i = 0; i < colors.length; i++) {
    horses[names[i]] = colors[i];
  }
  return horses
}

console.log(addHorses(names, colors))



