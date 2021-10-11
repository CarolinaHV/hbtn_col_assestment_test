const Shipping = ( props ) => {
    return (
        <ul>
            <li>Address: {props.address}</li>
            <li>City: {props.city},</li>
            <li>State: {props.state},</li>
            <li>Country: {props.country}</li>
            <li>Cost: {props.cost}</li>
        </ul>
    );
}

export default Shipping;