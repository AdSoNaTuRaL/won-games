import { gql } from '@apollo/client'

export const GameFragment = gql`
  fragment GameFragment on Game {
    name
    slug
    developers {
      name
    }
    cover {
      url
    }
    price
  }
`
