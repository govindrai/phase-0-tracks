// psudeocode
// for each item in the array
//   get the length of each item
// find the biggest length
// then return the item with the biggest length

function longestPhrase(array) {
  var length = 0;
  var longestPhrase = '';
  for (var index in array) {
    if (array[index].length > length) {
      length = array[index].length;
      longestPhrase = array[index];
    }
  }
  return longestPhrase;
}

console.log(longestPhrase(["long phrase","longest phrase","longer phrase"]));
console.log(longestPhrase(['aaa','aa','a']))
console.log(longestPhrase(['b','bb','bbb']))

function objectsMatch(obj1, obj2) {
  for (var property1 in obj1) {
    for( var property2 in obj2) {
      if (property1 === property2 && obj1[property1] === obj2[property2]) {
        console.log(`This property exists in both objects: ${property1 + ':' + obj1[property1]}`);
        return true;
      }
    }
  }
  return false;
}


console.log(objectsMatch({ name: "Govind", age: 23 }, { name: 'Govind', age:45 }));
console.log(objectsMatch({ name: 'Sam', age: 42, gender: 'female' }, {name: "Salisha", age: 20, gender: 'female'}));
console.log(objectsMatch({ name: 'Sam', age: 42, gender: 'male' }, {name: "Salisha", age: 20, gender: 'female'}));

function randomArrayGenerator(integer) {
  var alphabet = 'abcdefghijklmnoprqstuvwxyz'
  var randomArray = []
  for (var i = 0; i < integer; i++) {
    var numChars = Math.ceil(Math.random()*10);
    var randomWord = '';
    for (var j = 0; j < numChars; j++) {
      var alphabetIndex = Math.floor(Math.random()*26);
      randomWord += alphabet[alphabetIndex];
    }
    randomArray.push(randomWord);
  }
  return randomArray;
}

console.log(randomArrayGenerator(4));
console.log(randomArrayGenerator(5));
console.log(randomArrayGenerator(6));
console.log(randomArrayGenerator(7));

for (var i = 1; i <= 10; i++) {
  randomArray = randomArrayGenerator(i);
  console.log(randomArray);
  console.log(longestPhrase(randomArray));
}