import { renderWithTheme } from 'utils/tests/helpers'

import { Grid } from './index'

describe('<Grid />', () => {
  it('should render the grid correctly', () => {
    const { container } = renderWithTheme(<Grid />)

    expect(container.parentElement).toMatchInlineSnapshot(`
      .c0 {
        display: grid;
        grid-template-columns: repeat(auto-fill,minmax(25rem,1fr));
        grid-gap: 3.2rem;
        margin: 3.2rem 0;
      }

      <body>
        <div>
          <div
            class="c0"
          />
        </div>
      </body>
    `)
  })
})
