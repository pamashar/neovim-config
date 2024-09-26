import React from 'react';

const c = a + b

function App(props) {
    const [dateValue, setdateValue] = useState(null);

    useEffect(() => {
        console.log("1")

        return () => {
            console.log("2")
        }
    }, [])
 
    function fun(a, b, c) {
        console.log(a,b,c)
        console.log("q")
        console.log('1')
    }

    return (
        <>
            <div>qwe</div>
        </>
    );
};

function Main(props) {
    return (
        <>
            <div>Qwerty</div>
            <App />
            <div></div>
        </>
    );
};

export { App, Main };

