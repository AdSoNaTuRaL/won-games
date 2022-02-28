import userEvent from '@testing-library/user-event'
import { screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import filterItemsMock from 'components/ExploreSidebar/mock'

import { MockedProvider } from '@apollo/client/testing'
import apolloCache from 'utils/apollo-cache'

import { fetchMoreMock, gamesMock } from './mocks'

import Games from './index'

// eslint-disable-next-line @typescript-eslint/no-var-requires
const useRouter = jest.spyOn(require('next/router'), 'useRouter')
const push = jest.fn()

useRouter.mockImplementation(() => ({
  push,
  query: '',
  asPath: '',
  route: '/'
}))

jest.mock('templates/Base', () => ({
  __esModule: true,
  default: function Mock({ children }: { children: React.ReactNode }) {
    return <div data-testid="Mock Base">{children}</div>
  }
}))

jest.mock('next/link', () => ({
  __esModule: true,
  default: function Mock({ children }: { children: React.ReactNode }) {
    return <div>{children}</div>
  }
}))

describe('<Games />', () => {
  it('should render loading when starting the template', () => {
    renderWithTheme(
      <MockedProvider mocks={[]} addTypename={false}>
        <Games filterItems={filterItemsMock} />
      </MockedProvider>
    )

    expect(screen.getByRole('img', { name: /loading.../i })).toBeInTheDocument()
  })

  it('should render the heading', async () => {
    renderWithTheme(
      <MockedProvider mocks={[gamesMock]}>
        <Games filterItems={filterItemsMock} />
      </MockedProvider>
    )

    // starts with loading (without data)
    expect(screen.getByRole('img', { name: /loading.../i })).toBeInTheDocument()

    // wait to have data and then get elements - find => asyncron proccess
    expect(await screen.findByText(/price/i)).toBeInTheDocument()

    expect(await screen.findByText(/sample game/i)).toBeInTheDocument()

    expect(
      await screen.findByRole('button', { name: /show more/i })
    ).toBeInTheDocument()
  })

  it('should render more games when show more button is clicked', async () => {
    renderWithTheme(
      <MockedProvider mocks={[gamesMock, fetchMoreMock]} cache={apolloCache}>
        <Games filterItems={filterItemsMock} />
      </MockedProvider>
    )

    expect(await screen.findByText(/sample game/i)).toBeInTheDocument()

    userEvent.click(await screen.findByRole('button', { name: /show more/i }))

    expect(await screen.findByText(/fetch more game/i)).toBeInTheDocument()
  })

  it('should change push router when selecting a filter', async () => {
    renderWithTheme(
      <MockedProvider mocks={[gamesMock, fetchMoreMock]} cache={apolloCache}>
        <Games filterItems={filterItemsMock} />
      </MockedProvider>
    )

    userEvent.click(await screen.findByRole('checkbox', { name: /windows/i }))
    userEvent.click(await screen.findByRole('radio', { name: /low to high/i }))

    expect(push).toHaveBeenCalledWith({
      pathname: '/games',
      query: { platforms: ['windows'], sort_by: 'low-to-high' }
    })
  })
})
