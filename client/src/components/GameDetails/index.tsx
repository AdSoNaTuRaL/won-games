import Heading from 'components/Heading'
import MediaMatch from 'components/MediaMatch'
import * as S from './styles'

const GameDetails = () => (
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

export default GameDetails
