import Dashboard from "../components/shared/Dashboard";
import Header from "../components/shared/Header";
import '../styles/Layout.css';

const Layout = ({ children }) => {
	return (
		<div className="App_content">
			<Header />
			<Dashboard>
				{ children }
			</Dashboard>
		</div>
	);
}

export default Layout;