import React, { useState } from "react";
import PopUp from "./shared/PopUp";
import Shipping from "./Shipping";

const DataUserList = [{
  user_id: 2784,
  name: "Yukihira",
  last_name: "Soma",
  gov_id: "112233445",
  email: "soma@tsutko.com",
  company: "comedor soma",
  shipping: {
    address: "calle 45 22 56",
    city: "California",
    state: "no lo se",
    country: "infinite"
  }
},
{
  user_id: 8734,
  name: "Erina",
  last_name: "Nakiri",
  gov_id: "987654322",
  email: "erinasama@tsutko.com",
  company: "Tsutko school",
  shipping: {
    address: "Avda los cerro 34-56",
    city: "Albania",
    state: "New york",
    country: "Aldebaran"
  }
},
{
  user_id: 8372,
  name: "Mylo",
  last_name: "Hernandez",
  gov_id: "824723894",
  email: "mylo0@gmail.com",
  company: " ",
  shipping:  {
    address: "Avda siempre viva 34-56",
    city: "Albania",
    state: "New york",
    country: "Aldebaran"
  }
}
]

const UserList = () => {
  const [showPopUp, setShowPopUp] = useState(false)

  const [shippingData, setshippingData] = useState(false)


  function showShipping(data) {
    setshippingData(data)
    setShowPopUp(true)
  }

  return (<>
    <table className="user_list">
      <thead>
        <tr>
          <th>User ID</th>
          <th>Name</th>
          <th>last Name</th>
          <th>Document ID</th>
          <th>Email</th>
          <th>company</th>
          <th>Shipping</th>
        </tr>
      </thead>
      <tbody>
        {DataUserList.map((user, index) => {
          return (
            <React.Fragment key={index + "key_user"}>
              <tr>
                <td>{user.user_id}</td>
                <td>{user.name}</td>
                <td>{user.last_name}</td>
                <td>{user.gov_id}</td>
                <td>{user.email}</td>
                <td>{user.company}</td>
                <td>
                  <button className="button" 
                  type="button"
                  onClick={() => showShipping(user.shipping)}>Show Address</button>
                </td>
              </tr>
            </React.Fragment>
          )
        })}
      </tbody>
    </table>
    {
      showPopUp ?
      <PopUp okButton={setShowPopUp}>
        <Shipping address={shippingData.address}
        city={shippingData.city}
        state={shippingData.state}
        country={shippingData.country}></Shipping>
      </PopUp>:
      null
    }
    </>
  );
}

export default UserList;