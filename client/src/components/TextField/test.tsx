import userEvent from '@testing-library/user-event'
import { screen, waitFor, render } from 'utils/test-utils'
import { Email } from '@styled-icons/material-outlined/Email'

import TextField from './index'

describe('<TextField />', () => {
  it('should render with label', () => {
    render(<TextField label="label" name="field" id="field" />)

    expect(screen.getByLabelText('label')).toBeInTheDocument()
  })

  it('should render without label', () => {
    render(<TextField id="field" />)

    expect(screen.queryByLabelText('label')).not.toBeInTheDocument()
  })

  it('should render with placeholders', () => {
    render(<TextField placeholder="teste" id="field" />)

    expect(screen.getByPlaceholderText('teste')).toBeInTheDocument()
  })

  it('should changes its value when typing', async () => {
    const onInput = jest.fn()
    render(
      <TextField
        onInput={onInput}
        label="label"
        name="label"
        placeholder="teste"
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
    render(<TextField label="TextField" name="TextField" />)

    const input = screen.getByLabelText('TextField')
    expect(document.body).toHaveFocus()

    userEvent.tab()
    expect(input).toHaveFocus()
  })

  it('should render with icon', () => {
    render(<TextField icon={<Email data-testid="icon" />} />)

    expect(screen.getByTestId('icon')).toBeInTheDocument()
  })

  it('should render a icon on left by default', () => {
    render(<TextField icon={<Email data-testid="icon" />} />)

    expect(screen.getByTestId('icon').parentElement).toHaveStyle({ order: 0 })
  })

  it('should render a icon on right when right option is passed', () => {
    render(
      <TextField icon={<Email data-testid="icon" />} iconPosition="right" />
    )

    expect(screen.getByTestId('icon').parentElement).toHaveStyle({ order: 1 })
  })

  it('should not change its value when disabled', async () => {
    const onInput = jest.fn()
    render(
      <TextField
        onInput={onInput}
        label="textField"
        name="textField"
        disabled
      />
    )

    const input = screen.getByRole('textbox')
    expect(input).toBeDisabled()

    const text = 'this is a new text'
    userEvent.type(input, text)

    await waitFor(() => {
      expect(input).not.toHaveValue(text)
    })
    expect(onInput).not.toHaveBeenCalled()
  })

  it('should not be accessible by key Tab when is disabled', async () => {
    render(<TextField label="textField" name="textField" disabled />)

    const input = screen.getByLabelText('textField')
    expect(document.body).toHaveFocus()

    userEvent.tab()

    expect(input).not.toHaveFocus()
  })

  it('should render with error', () => {
    const { container } = render(
      <TextField
        icon={<Email data-testid="icon" />}
        label="textField"
        name="textField"
        error="Error message"
      />
    )

    expect(screen.getByText('Error message')).toBeInTheDocument()
    expect(container.firstChild).toMatchSnapshot()
  })
})
