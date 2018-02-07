class StoryBox extends React.Component {
  render() {
    const items = ['hi', 'hello', 'hola']

    return(
      <div>
        <div>Story Box</div>
        <ul>
          {items.map((item, id) => <li key={id}>{item}</li>)}
        </ul>
      </div>
    );
  }
}

ReactDOM.render(
  <StoryBox />, document.getElementById('story-app')
);
