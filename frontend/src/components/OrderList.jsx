import React, { useState } from 'react';
import Payment from './Payment';
import PopUp from './shared/PopUp';

const DataOrderList = [{
  id: 12345,
  user_id: 2784,
  date_star: "07-08-2021",
  date_end: "10-08-2021",
  shipping: "California",
  total: 130.00,
  payment: {
    type: "Cash",
    date: "07-08-2021",
    txn_id: "AB6876888389",
    total: 60.00,
    status: "Partial"
  }
},
{
  id: 67890,
  user_id: 8372,
  date_star: "15-08-2021",
  date_end: "16-08-2021",
  shipping: "New york",
  total: 150.00,
  payment: {
    type: "Credit Card",
    date: "15-08-2021",
    txn_id: "CF874982364",
    total: 150.00,
    status: "Approved"
  }
},
{
  id: 24680,
  user_id: 8734,
  date_star: "20-08-2021",
  date_end: "23-08-2021",
  shipping: "alaska",
  total: 100.00,
  payment: {
    type: "Transfer",
    date: "22-08-2021",
    txn_id: "JT8734873829",
    total: 100.00,
    status: "Approved"
  }
}
]

const OrderList = () => {
  const [showPopUp, setShowPopUp] = useState(false);

  const [paymentData, setPaymentData] = useState(false);

  function showPayment(data) {
    setPaymentData(data);
    setShowPopUp(true);
  }

  return (
    <>
      <table className="order_table">
        <thead>
          <tr>
            <th>Order ID</th>
            <th>User ID</th>
            <th>Date Star</th>
            <th>Date End</th>
            <th>Shipping</th>
            <th>Total</th>
            <th>Payment</th>
          </tr>
        </thead>
        <tbody>
          {DataOrderList.map((order, index) => {
            return (
              <React.Fragment key={index + "key_order"}>
                <tr>
                  <td>{order.id}</td>
                  <td>{order.user_id}</td>
                  <td>{order.date_star}</td>
                  <td>{order.date_end}</td>
                  <td>{order.shipping}</td>
                  <td>{order.total}</td>
                  <td>
                    <button className="button"
                      type="button"
                      onClick={() => showPayment(order.payment)}>
                        Show payment
                    </button>
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
            <Payment type={paymentData.type} 
            date={paymentData.date} 
            txn_id={paymentData.txn_id} 
            total={paymentData.total} 
            status={paymentData.status} />
          </PopUp>
          :
          null
      }
    </>
  );
}

export default OrderList;