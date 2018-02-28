module.exports = function(array, search) {
  var lower = 0;
  var upper = array.length - 1;
  var middle = -1;

  while(true) {
    // if the array is empty
    if (lower > upper) {
      return -1;
    }

    // find the new middle
    middle = Math.floor((lower + upper) / 2);

    // if the search value is found
    if (array[middle] === search) {
      return middle;
    }

    // redefine the range
    if (array[middle] < search) {
      lower = middle + 1;
    } else {
      upper = middle - 1;
    }
  }
}
