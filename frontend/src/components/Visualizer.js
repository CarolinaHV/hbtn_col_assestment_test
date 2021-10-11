import '../styles/Visualizer.css';

const Visualizer = ({ children }) => {
    return (
        <>
        <div className="visual">
            {children}
        </div>
        </>
    );
}

export default Visualizer;