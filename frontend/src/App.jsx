import { BrowserRouter, Switch, Route } from 'react-router-dom';
import './App.css';
import Layout from './components/Layout';
import Home from './views/Home';
import Order from './views/Order';
import User from './views/User';
import NotFound from './NotFound';


const App = () => {
  return (
    <>
      <BrowserRouter>
        <Layout>
          <Switch>
            <Route exact path='/' component={Home} />
            <Route exact path='/Order' component={Order} />
            <Route exact path='/User' component={User} />
            <Route component={NotFound} />
          </Switch>
        </Layout>
      </BrowserRouter>
    </>
  );
}

export default App;
