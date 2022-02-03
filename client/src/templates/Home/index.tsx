import { BannerProps } from 'components/Banner'
import { GameCardProps } from 'components/GameCard'
import Highlight, { HighlightProps } from 'components/Highlight'

import { Container } from 'components/Container'
import Menu from 'components/Menu'
import Footer from 'components/Footer'
import Heading from 'components/Heading'
import BannerSlider from 'components/BannerSlider'
import GameCardSlider from 'components/GameCardSlider'

// import * as S from './styles'

export type HomeTemplateProps = {
  banners: BannerProps[]
  newGames: GameCardProps[]
  mostPopularHighlight: HighlightProps
  mostPopularGames: GameCardProps[]
  upcomingGames: GameCardProps[]
  upcomingHighlight: HighlightProps
  upcomingMoreGames: GameCardProps[]
  freGames: GameCardProps[]
  freeHighligh: HighlightProps
}

const Home = ({
  banners,
  freGames,
  freeHighligh,
  mostPopularGames,
  mostPopularHighlight,
  newGames,
  upcomingGames,
  upcomingHighlight,
  upcomingMoreGames
}: HomeTemplateProps) => (
  <section>
    <Container>
      <Menu />
      <BannerSlider items={banners} />
    </Container>

    <Container>
      <Heading color="black" lineLeft lineColor="secondary">
        News
      </Heading>

      <GameCardSlider items={newGames} color="black" />
    </Container>

    <Container>
      <Heading lineLeft lineColor="secondary">
        Most Popular
      </Heading>

      <Highlight {...mostPopularHighlight} />
      <GameCardSlider items={mostPopularGames} />
    </Container>

    <Container>
      <Heading lineLeft lineColor="secondary">
        Upcoming
      </Heading>

      <GameCardSlider items={upcomingGames} />
      <Highlight {...upcomingHighlight} />
      <GameCardSlider items={upcomingMoreGames} />
    </Container>

    <Container>
      <Heading lineLeft lineColor="secondary">
        Free games
      </Heading>

      <Highlight {...freeHighligh} />
      <GameCardSlider items={freGames} />
    </Container>

    <Container>
      <Footer />
    </Container>
  </section>
)

export default Home
