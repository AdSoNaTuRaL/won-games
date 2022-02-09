import Heading from 'components/Heading'
import MediaMatch from 'components/MediaMatch'
import { Apple, Linux, Windows } from 'styled-icons/fa-brands'

import * as S from './styles'

type Platform = 'windows' | 'linux' | 'mac'

export type GameDetailsProps = {
  platforms: Platform[]
}

const GameDetails = ({ platforms }: GameDetailsProps) => {
  const platformIcons = {
    linux: <Linux title="Linux" size={18} />,
    mac: <Apple title="Mac" size={18} />,
    windows: <Windows title="Windows" size={18} />
  }

  return (
    <S.Wrapper>
      <MediaMatch greaterThan="small">
        <Heading lineLeft lineColor="secondary">
          Game Details
        </Heading>
      </MediaMatch>

      <S.Content>
        <S.Block>
          <S.Label>Developer</S.Label>
          <S.Description>Rockstar Games</S.Description>
        </S.Block>

        <S.Block>
          <S.Label>Release Date</S.Label>
          <S.Description>Nov 16, 2006</S.Description>
        </S.Block>

        <S.Block>
          <S.Label>Platforms</S.Label>
          <S.IconsWrapper>
            {platforms.map((platform: Platform) => (
              <S.Icon key={platform}>{platformIcons[platform]}</S.Icon>
            ))}
          </S.IconsWrapper>
        </S.Block>

        <S.Block>
          <S.Label>Publisher</S.Label>
          <S.Description>Rockstar North</S.Description>
        </S.Block>

        <S.Block>
          <S.Label>Rating</S.Label>
          <S.Description>18+</S.Description>
        </S.Block>

        <S.Block>
          <S.Label>Genres</S.Label>
          <S.Description>Action / Adventure</S.Description>
        </S.Block>
      </S.Content>
    </S.Wrapper>
  )
}

export default GameDetails
