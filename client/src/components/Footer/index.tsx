import Link from 'next/link'

import Heading from 'components/Heading'
import Logo from 'components/Logo'

import * as S from './styles'

const Footer = () => (
  <S.Wrapper>
    <Logo color="black" />
    <S.Content>
      <S.Column>
        <Heading color="black" size="small" lineBottom lineColor="secondary">
          Contact us
        </Heading>

        <a href="malito:adsonhenriquesilva@gmail.com">Email-me</a>
      </S.Column>

      <S.Column>
        <Heading color="black" lineColor="secondary" lineBottom size="small">
          Follow us
        </Heading>

        <nav aria-labelledby="social media">
          <a
            href="https://www.instagram.com/adsonatural"
            target="_blank"
            rel="noopenner, noreferrer"
          >
            Instagram
          </a>
          <a
            href="https://www.twitter.com/adsonatural"
            target="_blank"
            rel="noopenner, noreferrer"
          >
            Twitter
          </a>
          <a
            href="https://www.facebook.com/adsonatural"
            target="_blank"
            rel="noopenner, noreferrer"
          >
            Facebook
          </a>
          <a
            href="https://www.github.com/adsonatural"
            target="_blank"
            rel="noopenner, noreferrer"
          >
            Github
          </a>
        </nav>
      </S.Column>

      <S.Column>
        <Heading color="black" lineColor="secondary" lineBottom size="small">
          Links
        </Heading>

        <nav aria-labelledby="footer resources">
          <Link href="/">
            <a>Home</a>
          </Link>
          <Link href="/games">
            <a>Store</a>
          </Link>
          <Link href="/search">
            <a>Buscar</a>
          </Link>
        </nav>
      </S.Column>

      <S.Column>
        <Heading color="black" lineColor="secondary" lineBottom size="small">
          Location
        </Heading>
        <span>Avenida de Madrid, 72</span>
        <span>Jaen, Spain</span>
        <span>23008</span>
      </S.Column>
    </S.Content>

    <S.Copyright>
      Won Games {new Date().getFullYear()} © All rights reserved.
    </S.Copyright>
  </S.Wrapper>
)

export default Footer
