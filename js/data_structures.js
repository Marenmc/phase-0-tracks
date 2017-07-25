// MY HORSES - RELEASES 0 AND 1

// two separate arrays
// var colors = ["periwinkle", "cyan", "raspberry", "marigold"];
// var names = ["Chocolate Chip", "Beauty", "Fasty", "Lickety Split"];

// console.log(colors);
// colors.push("charcoal");
// console.log(colors);

// console.log(names);
// names.push("Maggie Smith");
// console.log(names);

// declare an empty object
// Create a loop that sets the index to one, specifies how many times to loop through, accesses the array, pushes the data in the array to the obect, and then iterates to the next item in the index


// function addHorses(names, colors){
//   var horses = {};
//   for (var i = 0; i < colors.length; i++) {
//     horses[names[i]] = colors[i];
//   }
//   return horses
// }

// console.log(addHorses(names, colors))

// MAKING CARS - RELEASE 3

function Car(make, model, year, isNew) {
    this.make = make;
    this.model = model;
    this.year = year;
    this.isNew = isNew;
}

var marensCar = new Car("honda", "fit", 2011, true);
console.log("Maren's car is a " + marensCar['year'] + " " + marensCar['make'] + " " + marensCar['model']  + ". Is her car new? " + marensCar['isNew'])
console.log(marensCar)
var marysCar = new Car("honda", "crv", 2014, true);
console.log(marysCar)
var momsCar = new Car("BMW", "5 series", 2010, false);
console.log(momsCar)
