import React, { Component } from 'react';
import JBIpsum from './jb_ipsum';

class Paragraphs extends Component {
  constructor() {
    super();
  }

  render() {
    return (
      <div>
        <section>
          {this.props.content.map(this.toParagraph)}
        </section>
        <hr/>
      </div>
    );
  }

  toParagraph(p, i) {
    return (<p key={i} >{p}</p>);
  }
}

export default class App extends Component {
  constructor() {
    super();
    this.state = {};
    this.state.paragraphs = [];
    this.state.count = 0;
  }

  render() {
    var {paragraphs} = this.state;

    return (
      <div>
        {paragraphs.length ? <Paragraphs content={paragraphs}/> : ''}
        <section>
          <h3>Baby, baby, baby, how many paragraphs?
            <input ref='value' type="number"
              name="paragraphs" min="1" max="10"
              placeholder={this.state.count}/>
          </h3>
        </section>
        <section>
          <input type="submit" value='Swag' onClick={this.onClick.bind(this)}/>
        </section>
      </div>
    );
  }

  onClick(e) {
    e.preventDefault();

    var count = this.refs.value.getDOMNode().value;
    var jb = new JBIpsum(count);
    var paragraphs = jb.return_requested_paragraphs();

    this.setState({paragraphs, count});
  }
}
