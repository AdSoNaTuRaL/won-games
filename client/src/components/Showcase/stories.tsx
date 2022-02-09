import { Story, Meta } from '@storybook/react/types-6-0'
import Showcase, { ShowcaseProps } from '.'

import highlighMock from 'components/Highlight/mock'
import gamesMock from 'components/GameCardSlider/mock'

export default {
  title: 'Showcase',
  component: Showcase,
  decorators: [
    (Story) => (
      <div style={{ margin: '0 auto' }}>
        <Story />
      </div>
    )
  ],
  parameters: {
    layout: 'fullscreen',
    backgrounds: {
      default: 'won-dark'
    }
  }
} as Meta

export const Basic: Story<ShowcaseProps> = (args) => <Showcase {...args} />

Basic.args = {
  title: 'Most Popular',
  highlight: highlighMock,
  games: gamesMock
}

export const withoutHighlight: Story<ShowcaseProps> = (args) => (
  <Showcase {...args} />
)

withoutHighlight.args = {
  title: 'Most Popular',
  games: gamesMock
}

export const withoutGames: Story<ShowcaseProps> = (args) => (
  <Showcase {...args} />
)

withoutGames.args = {
  title: 'Most Popular',
  highlight: highlighMock
}
