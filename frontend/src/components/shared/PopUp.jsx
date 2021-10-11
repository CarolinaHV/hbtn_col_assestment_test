const PopUp = (props) => {
    const hidden = () => {
        props.okButton(false);
    }
    return (
        <div className="popup">
            { props.children }
            <button onClick={() => {hidden()}} >OK</button>
        </div>
    )
}

export default PopUp;