import React from 'react';

export default class TestCounter extends React.Component {

  instance() { return this.constructor.instance }

  constructor(props) {
    super(props);
    this.state = props;
    this.constructor.instance = this;
  }

  render() {
    return React.DOM.span(null, this.state.counter_value);
  }
}
