import SearchBar from "./SearchBar";
import Visualizer from "../Visualizer";
// import Footer from "./Footer";
import '../../styles/Dashboard.css';

const Dashboard = ({ children }) => {
  return (
    <>
      <div className="dashboard">
        <SearchBar />
        <Visualizer>
          {children}
        </Visualizer>
        {/* <Footer /> */}
      </div>
    </>
  );
}

export default Dashboard;