var chai = require('chai');
var expect = chai.expect;
var dijkstra = require('./dijkstra');

const nodes = [
  'A',
  'B',
  'C',
  'D',
  'E',
  'F',
];

const edges = [
  {from: 'A', to: 'B', weight: 4},
  {from: 'B', to: 'C', weight: 1},
  {from: 'C', to: 'E', weight: 3},
  {from: 'D', to: 'D', weight: 7},
  {from: 'E', to: 'F', weight: 2},
  {from: 'F', to: 'A', weight: 4},
];


const table = {
  'A': {value: 0, visited: false},
  'B': {value: Infinity, visited: false},
  'C': {value: Infinity, visited: false},
  'D': {value: Infinity, visited: false},
  'E': {value: Infinity, visited: false},
  'F': {value: Infinity, visited: false},
};

describe(`dijkstra`, function() {
  it(`exists`, function() {
    expect(dijkstra(nodes, edges, 'A')).to.deep.equal(table);
  });
});
