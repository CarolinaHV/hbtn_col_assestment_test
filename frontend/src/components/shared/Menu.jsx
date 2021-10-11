import '../../styles/Menu.css';
import img_home from '../../assets/img/icons/icons8-home-64.png';
import order_img from '../../assets/img/icons/icons8-order-history-64.png';
import user_img from '../../assets/img/icons/icons8-user-60.png';

const Menu = () => {
  return (
    <>
    <div className="menu">
      <nav>
        <ul>
          <li>
            <img src={img_home} alt="home-icon"></img>
            <a href="./">HOME</a>
          </li>
          <li>
            <img src={order_img} alt="home-icon"></img>
            <a href="/Order">Orders</a>
          </li>
          <li>
            <img src={user_img} alt="home-icon"></img>
            <a href="/User">Users</a>
          </li>
        </ul>
      </nav>
    </div>
    </>
  );
}

export default Menu;