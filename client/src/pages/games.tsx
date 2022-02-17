import GamesTemplate, { GamesTemplateProps } from 'templates/Games'
import filterItemsMock from 'components/ExploreSidebar/mock'
import gamesMock from 'components/GameCardSlider/mock'

export default function Games(props: GamesTemplateProps) {
  return <GamesTemplate {...props} />
}

export function getServerSideProps() {
  return {
    props: {
      games: gamesMock,
      filterItems: filterItemsMock
    }
  }
}
