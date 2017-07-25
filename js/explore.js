// Create a variable
// Write a function that takes in the variable
// Within that function, set a counter
// Create a loop with for
// Start your loop at the end of the length of the string and loop through each character in the string
// Deincrement the counter by 1
// Explicitly return the data
// End the loop and function
// Call the actual function and log it in the console


function reverseString(str) {
    var newString = "";
    for (var i = str.length - 1; i >= 0; i--) {
        newString += str[i];
    }
    console.log( newString );
    return newString
}

reverseString('Maren');
result = reverseString('Maren');
console.log( result );

console.log("Maren" == "Maren");