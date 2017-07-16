import ReactOnRails from 'react-on-rails';

import NavBar from '../components/nav_bar';
import TestCounter from '../components/test_counter';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  NavBar, TestCounter
});
