const Payment = (props) => {
    return (
        <ul>
            <li>Type: {props.type}</li>
            <li>Date: {props.date},</li>
            <li>Transation id: {props.txn_id},</li>
            <li>total: {props.total}</li>
            <li>status: {props.status}</li>
        </ul>
    );
}

export default Payment;