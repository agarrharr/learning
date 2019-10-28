const getColors = () => {
  // pick a value for the first one
  // if that's valid, pick a value for the next one
  // else, go back and pick a different value
  // if you've gone all the way back, go back another step
  // if you've gone all the way back and tried all the values, give up
  // if you get all the way to the end and it's valid, then you have a valid solution
  return [];
};

const isValid = map => {
  if (
    map["Mississippi"] === map["Tennessee"] ||
    map["Mississippi"] === map["Alabama"] ||
    map["Alabama"] === map["Georgia"] ||
    map["Alabama"] === map["Tennessee"] ||
    map["Alabama"] === map["Florida"] ||
    map["Georgia"] === map["Florida"] ||
    map["Georgia"] === map["Tennessee"]
  ) {
    return false;
  }
  return true;
};

console.log(getColors());
