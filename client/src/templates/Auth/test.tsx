import { screen, render } from 'utils/test-utils'

import Auth from './index'

describe('<Auth />', () => {
  it('should render logos, title, subtitle, footer and children', () => {
    render(
      <Auth title="Auth Title">
        <input type="text" />
      </Auth>
    )

    // LOGOS
    expect(screen.getAllByRole('img', { name: 'Won Games' })).toHaveLength(2)

    // TITLE
    expect(
      screen.getByRole('heading', { name: /all your favorite/i })
    ).toBeInTheDocument()

    // SUBTITLE
    expect(
      screen.getByRole('heading', { name: /won is the best/i })
    ).toBeInTheDocument()

    // CONTENT TITLE
    expect(
      screen.getByRole('heading', { name: /Auth Title/i })
    ).toBeInTheDocument()

    // CHILDREN
    expect(screen.getByRole('textbox')).toBeInTheDocument()
  })
})
