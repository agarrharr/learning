class CommentBox extends React.Component {
  constructor() {
    super();

    this.state = {
      comments: [],
      showComments: false
    };
  }

  componentWillMount() {
    this._fetchComments();
  }

  componentDidMount() {
    this._timer = setInterval(() => this._fetchComments, 5000);
  }

  componentWillUnmount() {
    clearInterval(this._timer);
  }

  render() {
    const comments = this._getComments();
    let commentNodes;
    let buttonText = 'Show comments';

    if (this.state.showComments) {
       buttonText = 'Hide comments';
    }

    if (this.state.showComments) {
      commentNodes = <div className="comment-list">{comments}</div>;
    }

    return(
      <div className="comment-box">
        <h3>Comments</h3>
        <CommentForm addComment={this._addComment.bind(this)} />
        <h4 className="comment-count">{this._getCommentsTitle(comments.length)}</h4>
        <button onClick={this._handleClick.bind(this)}>{buttonText}</button>
        {commentNodes}
      </div>
    );
  };

  _getComments() {
    return this.state.comments.map(comment => {
      return (
        <Comment
          author={comment.author}
          body={comment.body}
          key={comment.id}
          id={comment.id}
          onDelete={this._deleteComment.bind(this)}
        />
      );
    });
  }

  _addComment(author, body) {
    const comment = {
      id: this.state.comments.length,
      author,
      body
    };
    this.setState({comments: this.state.comments.concat(comment)});
  }

  _getCommentsTitle(commentCount) {
    if (commentCount === 0) {
      return `No comments yet`;
    } else if (commentCount === 1) {
      return `1 comment`;
    } else {
      return `${commentCount} comments`;
    }
  }

  _handleClick() {
    this.setState({showComments: !this.state.showComments});
  }

  _fetchComments() {
    $.ajax({
      method: 'GET',
      url: '/api/comments/index.json',
      success: (comments) => {
        this.setState({comments});
      }
    });
  }

  _deleteComment(id) {
    $.ajax({
      method: 'DELETE',
      url: `/api/comments/${id}`,
    });

    const comments = [...this.state.comments];
    const index = comments.reduce((previousValue, currentValue, i) => {
      return id === currentValue.id ? i : 0;
    }, 0);
    this.setState({comments: [
      ...comments.slice(0, index),
      ...comments.slice(index + 1)
    ]});
  }
}

class Comment extends React.Component {
  render() {
    return(
      <div className="comment">
        <p className="comment-header">{this.props.author}</p>
        <p className="comment-body">
          {this.props.body}
        </p>
        <div className="comment-footer">
          <a href="#" onClick={this._handleClick.bind(this)} className="comment-footer-delete">
            Delete comment
          </a>
        </div>
      </div>
    );
  };

  _handleClick(e) {
    e.preventDefault();
    this.props.onDelete(this.props.id);
  }
}

class CommentForm extends React.Component {
  render() {
    return (
      <form className="comment-form" onSubmit={this._handleSubmit.bind(this)}>
        <label>Join the discussion</label>
        <div className="comment-form-fields">
          <input placeholder="Name" ref={input => this._author = input} />
          <textarea placeholder="Comment" ref={input => this._body = input}></textarea>
        </div>
        <div className="comment-form-actions">
          <button type="submit">Post comment</button>
        </div>
      </form>
    );
  }

  _handleSubmit(event) {
    event.preventDefault();

    let author = this._author;
    let body = this._body;

    this.props.addComment(author.value, body.value);
  }
}

ReactDOM.render(
  <CommentBox />, document.getElementById('app')
);
