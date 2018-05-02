const express = require('express');

const app = express();

app.get('/', (request, result) => {
  result.send('Hello worldz!');
});

app.get('/redirect/:url*', (request, result) => {
  const url = `${request.params.url}${request.param(0)}`;
  result.redirect(url);
});

const port = 8000;
const server = app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
