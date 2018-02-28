var chai = require('chai');
var expect = chai.expect;

var binarySearch = require('./binarySearch.js');

describe('binarySearch', function() {
  it('should search small array', function() {
    var array = [1, 4, 5, 6];

    expect(binarySearch(array, 4)).to.equal(1);
    expect(binarySearch(array, 5)).to.equal(2);
  });

  it('should return -1 when not found', function() {
    var array = [1, 4, 5, 6];
    var search = 20;

    expect(binarySearch(array, search)).to.equal(-1);
  });

  it('should find stuff at the end', function() {
    var array = [1, 4, 5, 6, 20];

    expect(binarySearch(array, 20)).to.equal(4);
  });

  it('should find stuff at the beginning', function() {
    var array = [1, 4, 5, 6];

    expect(binarySearch(array, 1)).to.equal(0);
  });

  it('should work with long arrays', function() {
    var array = [1, 4, 5, 6, 7, 18, 22, 25, 57, 68, 101, 250, 3000, 5002];

    expect(binarySearch(array, 101)).to.equal(10);
    expect(binarySearch(array, 250)).to.equal(11);
    expect(binarySearch(array, 5002)).to.equal(13);
    expect(binarySearch(array, 5003)).to.equal(-1);
  });
});
