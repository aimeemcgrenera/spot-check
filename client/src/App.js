import React, { Component } from 'react';
import ZoneSearch from './ZoneSearch';
// import ZoneList from './ZoneList';

class App extends Component {

  render() {

    return (
      <div className='App'>
        <div className='ui text container'>
          <ZoneSearch
          />

        </div>
      </div>
    );
  }
}

export default App;
