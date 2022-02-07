import { screen, waitFor } from '@testing-library/react'
import userEvent from '@testing-library/user-event'
import { renderWithTheme } from 'utils/tests/helpers'
import { Email } from '@styled-icons/material-outlined/Email'

import TextField from './index'

describe('<TextField />', () => {
  it('should render with label', () => {
    renderWithTheme(<TextField label="label" labelFor="field" id="field" />)

    expect(screen.getByLabelText('label')).toBeInTheDocument()
  })

  it('should render without label', () => {
    renderWithTheme(<TextField id="field" />)

    expect(screen.queryByLabelText('label')).not.toBeInTheDocument()
  })

  it('should render with placeholders', () => {
    renderWithTheme(<TextField placeholder="teste" id="field" />)

    expect(screen.getByPlaceholderText('teste')).toBeInTheDocument()
  })

  it('should changes its value when typing', async () => {
    const onInput = jest.fn()
    renderWithTheme(
      <TextField
        onInput={onInput}
        label="label"
        labelFor="label"
        placeholder="teste"
        id="field"
      />
    )

    const input = screen.getByRole('textbox')
    const text = 'This is a new text'
    userEvent.type(input, text)

    await waitFor(() => {
      expect(input).toHaveValue(text)
      expect(onInput).toHaveBeenCalledTimes(text.length)
    })

    expect(onInput).toHaveBeenCalledWith(text)

    expect(screen.queryByPlaceholderText('teste')).toBeInTheDocument()
  })

  it('should be accessible by pressing key Tab', () => {
    renderWithTheme(
      <TextField label="TextField" labelFor="TextField" id="TextField" />
    )

    const input = screen.getByLabelText('TextField')
    expect(document.body).toHaveFocus()

    userEvent.tab()
    expect(input).toHaveFocus()
  })

  it('should render with icon', () => {
    renderWithTheme(<TextField icon={<Email data-testid="icon" />} />)

    expect(screen.getByTestId('icon')).toBeInTheDocument()
  })
})
