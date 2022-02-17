import GamesTemplate, { GamesTemplateProps } from 'templates/Games'

export default function Games(props: GamesTemplateProps) {
  return <GamesTemplate {...props} />
}

export function getServerSideProps() {
  return {
    props: {
      games: []
    }
  }
}
