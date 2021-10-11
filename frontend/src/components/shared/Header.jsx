import Menu from "./Menu";
import UserBar from "./UserBar";
import '../../styles/Header.css'

const Header = () => {
  return (
    <>
      <header className="header">
        <Menu />
        <UserBar />
      </header>
    </>
  );
}

export default Header;