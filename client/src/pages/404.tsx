import { Container } from 'components/Container'
import Empty from 'components/Empty'
import Base from 'templates/Base'

export default function Page404() {
  return (
    <Base>
      <Container>
        <Empty
          title="404 | Not found"
          description="Oops...this page doesn't exist. Go back to store and enjoy our offers"
          hasLink
        />
      </Container>
    </Base>
  )
}
