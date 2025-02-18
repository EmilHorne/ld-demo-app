import ld from '../images/ld-white-wide.png'


export default function Header(props) {
  return (
    <div className='grid  w-full bg-ldgray shadow-2xl place-items-center'>
    <div className="mx-auto xl:w-full p-4 lg:p-4 px-7 lg:px-28">
      <div>
      <img src={ld} className="mx-auto max-h-30" alt="logo" />
      </div>
      <div className="text-base md:text-4xl pb-4 2xl:text-6xl">
        { props.bannertext === "off" ? (
            <p><span className="text-transparent bg-clip-text bg-gradient-to-br from-ldyellow to-lddblue">Deploy changes without releasing them</span>, then <span className="text-transparent bg-clip-text bg-gradient-to-br from-ldyellow to-lddblue">progressively release to targeted audiences</span> and <span className="text-transparent bg-clip-text bg-gradient-to-br from-ldyellow to-lddblue">measure impact</span>!</p>
        ) : (
            <p>Welcome <span className="text-transparent bg-clip-text bg-gradient-to-br from-ldyellow to-lddblue">{props.bannertext}</span>!</p>
        )}
      </div>      
    </div>
    </div>
  );
}
