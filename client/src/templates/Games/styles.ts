import styled, { css } from 'styled-components'
import { Container } from 'components/Container'
import media from 'styled-media-query'

export const Main = styled(Container)`
  ${({ theme }) => css`
    ${media.greaterThan('medium')`
      display: grid;
      grid-template-columns: 26rem 1fr;
      gap: ${theme.grid.gutter};

      > svg {
        color: ${theme.colors.white};
        justify-self: center;
        align-self: baseline;
      }
    `}

    > svg {
      color: ${theme.colors.white};
      display: flex;
      margin: auto;
      margin-top: ${theme.spacings.xxlarge};
    }
  `}
`

export const ShowMore = styled.div`
  ${({ theme }) => css`
    color: ${theme.colors.white};
    text-align: center;
    padding: ${theme.spacings.medium};
    text-transform: uppercase;
    font-weight: ${theme.font.bold};
    cursor: pointer;

    > svg {
      color: ${theme.colors.primary};
    }
  `}
`
