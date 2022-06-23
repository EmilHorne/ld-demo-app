import QRCode from "./components/qrCode";
import ldlogo from "./../src/images/ld-light.png";
import toggle from "./../src/images/toggle_thumbsup.png";
import "./App.css";
import { useFlags } from "launchdarkly-react-client-sdk";
import Header from "./components/header";
import Login from "./components/login";
import Intro from "./components/intro";
import Release from "./components/release";
import Heart from "./components/heart";

function App() {
  const { qrcode, upperimage, logoversion, cardshow, login, prodHeader, release, heartshow, bannerstring } = useFlags();
  
  return (
    <div className="App h-screen bg-ldls grid grid-cols-5 grid-rows-4 bg-cover bg-no-repeat">
      { prodHeader ? (
        <header className="App-header grid row-start-1 col-start-1 col-span-6 place-items-center">
          <Header bannertext={bannerstring} />
        </header>
      ):
      (
        <header className="App-header grid row-start-2 col-start-1 col-span-5 place-items-center">
        <div className="body bg-ldgray px-8 py-4 mb-5 w-full shadow-2xl">
          <p className="text-m xl:text-4xl">The common <span className="text-ldyellow">Application Delivery</span> flow...</p>
        </div>
        <Intro release={release} />
      </header>
        )
      }
      {qrcode ? (
        <div className="body grid row-start-2 col-start-2 col-span-3 bg-black-4 place-items-center">
            <QRCode /> 
        </div>
      ) : null}
      {heartshow ? (
          <div className="body grid row-start-2 col-start-2 col-span-3 bg-black-4 place-items-center">
            <Heart />
          </div>
      ) : null}
      {login ? (
        <div className="body grid row-start-3 col-start-2 col-span-3 bg-black-4">
          <Login />
        </div>
      ) : null}
      {upperimage ? (
        <div className="body grid row-start-2 col-start-4 col-span-2 place-items-center">
          {logoversion ? (
            <img
              src={toggle}
              className="mx-auto h-56 lg:h-60 2xl:h-80"
              alt="logo"
            />
          ) : (
            <div className="">
              <img
                src={ldlogo}
                className="App-pulse mx-auto h-56 lg:h-60 2xl:h-80"
                alt="logo"
              />
            </div>
          )}
        </div>
      ) : (
        <div />
      )}
      {cardshow ? (
          <div className="body grid row-start-4 col-start-1 col-span-5">
            <Release />
          </div>
      ) : (
        null
      )}
    </div>
  );
}

export default App;
