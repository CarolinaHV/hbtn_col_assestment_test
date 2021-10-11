import SearchBar from "./SearchBar";
import Visualizer from "../Visualizer";
import '../../styles/Dashboard.css';

const Dashboard = ({ children }) => {
  return (
    <>
      <div className="dashboard">
        <SearchBar />
        <Visualizer>
          {children}
        </Visualizer>
      </div>
    </>
  );
}

export default Dashboard;