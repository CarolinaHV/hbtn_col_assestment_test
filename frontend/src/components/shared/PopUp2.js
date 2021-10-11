const PopUp2 = (props) => {
    const [showMe, setshowMe] = useState(false)
    
    const hidden = () => {
        setshowMe(true);
    }
    return (
        showMe === true ?
            <div className="popup">
                { props.children }
                <button onClick={() => {hidden()}} >OK</button>
            </div> :
            null
    )
}

export default PopUp2;