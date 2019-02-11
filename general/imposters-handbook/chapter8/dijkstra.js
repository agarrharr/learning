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

const dijkstra = (nodes, edges, startingNode) => {
  const table = nodes.reduce((accum, node) => ({
    ...accum,
    [node]: {
      node,
      value: node === startingNode ? 0 : Infinity,
      visited: false,
    },
  }), {});

  console.log(table);

  let hasUnvisitedNode = true;
  while (hasUnvisitedNode) {
    const smallValueUnvisited = Object.values(table).reduce((a, node) => {
      if (node.visited) {
        return a;
      }
      if (a && a.value > node.value || node.value) {
        return node;
      }
      return a;
    }, null);
    console.log(smallValueUnvisited);

    if (smallValueUnvisited) {
      const connectingEdges = edges.filter(e => e.from === smallValueUnvisited.node)
      for (edgeIndex in connectingEdges) {
        const edge = connectingEdges[edgeIndex];
        const potentialValue = table[smallValueUnvisited.node].value + edge.weight;
        const currentValue = table[edge.to].value;

        console.log(potentialValue, currentValue);

        if (potentialValue < currentValue) {
          table[edge.to].value = potentialValue;
          table[edge.to].visited = true;
        }
      }
    }

    hasUnvisitedNode = Object.values(table).reduce((a, node) => a && node.visited , true);
  }

  // for (nodeIndex in nodes) {
  //   const node = nodes[nodeIndex];
  //   console.log(node);
  //   const connectingEdges = edges.filter(e => e.from === node)
  //   console.log(connectingEdges);
  //   console.log(table[node]);

  //   for (edgeIndex in connectingEdges) {
  //     const edge = connectingEdges[edgeIndex];
  //     const potentialValue = table[node].value + edge.weight;
  //     const currentValue = table[edge.to].value;

  //     console.log(potentialValue, currentValue);

  //     if (potentialValue < currentValue) {
  //       table[edge.to].value = potentialValue;
  //       table[edge.to].visited = true;
  //     }
  //   }
  // }

  return table;
};

console.log(dijkstra(nodes, edges, 'A'));

module.exports = dijkstra;
