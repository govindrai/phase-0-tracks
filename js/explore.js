// Psuedocode
// for each letter at the end of the array
//  append that letter to a new string
//  return that string

function reverse(word) {
  var reversed_string = '';
  for (var i = 0; i < word.length; i++) {
    reversed_string = word[i]+reversed_string;
  }
  return reversed_string;
}

var olleh = reverse('hello');

if (1 == 1) {
  console.log(olleh);
}
