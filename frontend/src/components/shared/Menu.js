import '../../styles/Menu.css';

const Menu = () => {
  return (
    <div className="menu">
      <nav>
        <ul>
          <li>
            <a href="./">HOME</a>
          </li>
          <li>
            <a href="/Order">Orders</a>
          </li>
          <li>
            <a href="/User">Users</a>
          </li>
        </ul>
      </nav>
    </div>
  );
}

export default Menu;