import QRCode from "react-qr-code";

const QRURL = "https://emilhorne.github.io/react_qr_app"

const qrCodeHome = () => {  
  return (
    <div className="mx-auto shadow-2xl">
      <div className="qr-wrapper">
        <QRCode size="200" value={QRURL} />
      </div>
    </div>
  )     
};

export default qrCodeHome;