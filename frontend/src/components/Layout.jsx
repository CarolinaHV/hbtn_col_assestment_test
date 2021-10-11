import Dashboard from "./shared/Dashboard";
import Header from "./shared/Header";
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