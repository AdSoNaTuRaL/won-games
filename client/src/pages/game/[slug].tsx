import Game, { GameTemplateProps } from 'templates/Game'

import galleryMock from 'components/Gallery/mock'

export default function Index(props: GameTemplateProps) {
  return <Game {...props} />
}

export async function getStaticPaths() {
  return {
    paths: [{ params: { slug: 'cyberpunk-2077' } }],
    fallback: false
  }
}

export async function getStaticProps() {
  return {
    props: {
      cover:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSET2LEixlKz6Yi9gWXwgC_5FdnYJw7RUhfV9IfpOdX7JnvG1HNUqPtGjVvH2dz98a2pYY&usqp=CAU',
      gameInfo: {
        title: 'Cyberpunk 2077',
        price: '259,00',
        description:
          'Cyberpunk 2077 é um jogo eletrônico de RPG de ação desenvolvido e publicado pela CD Projekt. Lançado em 10 de dezembro de 2020 para Google Stadia, Microsoft Windows, PlayStation 4 e Xbox One, e previsto para 2021 para PlayStation 5 e Xbox Series X/S, sendo que nesses já está disponível via retrocompatibilidade'
      },
      gallery: galleryMock
    }
  }
}
