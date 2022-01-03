import React from 'react';
import Wrapper, { A } from './Wrapper';

function LeftMenuFooter() {
  return (
    <Wrapper>
      <div className="poweredBy">
        Powered by 
        &nbsp;
        <A
          href="https://github.com/adsonatural"
          key="website"
          target="_blank"
          rel="noopener noreferrer"
        >
          AdSoNaTuRaL
        </A>
      </div>
    </Wrapper>
  );
}
export default LeftMenuFooter;
