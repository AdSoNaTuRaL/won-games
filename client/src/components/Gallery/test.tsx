import 'match-media-mock'
import { fireEvent, screen } from '@testing-library/react'
import { renderWithTheme } from 'utils/tests/helpers'

import Gallery from './index'

import mockItems from './mock'

describe('<Gallery />', () => {
  it('should render thumbnails as buttons', () => {
    renderWithTheme(<Gallery items={mockItems.slice(0, 2)} />)

    expect(
      screen.getByRole('button', { name: /Thumb - Gallery image 1/i })
    ).toHaveAttribute('src', mockItems[0].src)
    expect(
      screen.getByRole('button', { name: /Thumb - Gallery image 2/i })
    ).toHaveAttribute('src', mockItems[1].src)
  })

  it('should open modal', () => {
    renderWithTheme(<Gallery items={mockItems.slice(0, 2)} />)

    const modal = screen.getByLabelText('modal')

    //verify if modal is hidden
    expect(modal.getAttribute('aria-hidden')).toBe('true')
    expect(modal).toHaveStyle({ opacity: 0 })

    // click on modal and check if its open
    fireEvent.click(
      screen.getByRole('button', { name: /Thumb - Gallery image 1/i })
    )
    expect(modal.getAttribute('aria-hidden')).toBe('false')
    expect(modal).toHaveStyle({ opacity: 1 })
  })

  it('should open modal with selected image', async () => {
    renderWithTheme(<Gallery items={mockItems.slice(0, 2)} />)

    // click on modal and check if its open
    fireEvent.click(
      screen.getByRole('button', { name: /Thumb - Gallery image 2/i })
    )

    const img = await screen.findByRole('img', { name: /gallery image 2/i })
    expect(img.parentElement?.parentElement).toHaveClass('slick-active')
  })

  it('should close modal when overlay or button is clicked', () => {
    renderWithTheme(<Gallery items={mockItems.slice(0, 2)} />)

    const modal = screen.getByLabelText('modal')

    // click on modal and check if its open
    fireEvent.click(
      screen.getByRole('button', { name: /Thumb - Gallery image 1/i })
    )

    // click on modal and check if its closed
    fireEvent.click(screen.getByRole('button', { name: /close modal/i }))

    expect(modal.getAttribute('aria-hidden')).toBe('true')
    expect(modal).toHaveStyle({ opacity: 0 })
  })

  it('should close modal when key ESC is pressed', () => {
    const { container } = renderWithTheme(
      <Gallery items={mockItems.slice(0, 2)} />
    )

    const modal = screen.getByLabelText('modal')

    // click on modal and check if its open
    fireEvent.click(
      screen.getByRole('button', { name: /Thumb - Gallery image 1/i })
    )

    // click on modal and check if its closed
    fireEvent.keyUp(container, { key: 'Escape' })

    expect(modal.getAttribute('aria-hidden')).toBe('true')
    expect(modal).toHaveStyle({ opacity: 0 })
  })
})
