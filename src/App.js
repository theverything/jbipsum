import React, { Component } from 'react';
import jbIpsum from './jbIpsum';

export default class App extends Component {
  state = {
    paragraphs: [],
    count: 1,
  };

  onClick = () => this.setState({ paragraphs: jbIpsum(this.state.count) });

  onChange = e => this.setState({ count: Number(e.target.value) });

  render() {
    const { paragraphs, count } = this.state;
    const hasParagraphs = Boolean(paragraphs.length);

    return (
      <div>
        {hasParagraphs && [
          <section key="section">{paragraphs.map((p, i) => <p key={i}>{p}</p>)}</section>,
          <hr key="hr" />,
        ]}
        <section>
          <h3>
            Baby, baby, baby, how many paragraphs?
            <input type="number" name="paragraphs" min="1" max="10" value={count} onChange={this.onChange} />
          </h3>
        </section>
        <section>
          <input type="submit" value="Swag" onClick={this.onClick} />
        </section>
      </div>
    );
  }
}
