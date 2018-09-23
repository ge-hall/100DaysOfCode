
// simple setup to test effect of regular expression on 
// a test string. 
// The problem to solve here is that I have many rows of data in a SQL Database.
// which contain time values in a user editable field.
// I need to extract all instances of <value><time-interval>
// for examples such as 45 minutes, 45MIN, 2Hr, 2.5HR, 3 Hours etc
// Run this file with the command node regExp.js
let re = /(\d+(?:\.\d*)?|\.\d+) ?(?:MIN|HR|Hour)/g;
let testStr = `** 50 MINS ** ++ + INFERIOR RECTUS PLICATION -CAT 3 - 45MINS 1.5 HR`;

console.log(testStr.match(re));