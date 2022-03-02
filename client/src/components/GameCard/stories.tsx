import { Story, Meta } from '@storybook/react/types-6-0'
import { CartContextData } from 'hooks/use-cart'
import GameCard, { GameCardProps } from '.'

export default {
  title: 'GameCard',
  component: GameCard,
  args: {
    slug: 'population-zero',
    title: 'Population Zero',
    developer: 'Rockstar Games',
    img: 'https://source.unsplash.com/user/willianjusten/300x140',
    price: 235,
    promotionalPrice: 200
  },
  argTypes: {
    onFav: { action: 'clicked' },
    ribbon: { type: 'string' }
  }
} as Meta

export const Basic: Story<GameCardProps> = (args) => <GameCard {...args} />

export const WithRibbon: Story<GameCardProps> = (args) => <GameCard {...args} />

WithRibbon.args = {
  ribbon: '20% OFF',
  ribbonSize: 'small',
  ribbonColor: 'primary'
}

export const IsInCart: Story<GameCardProps & CartContextData> = (args) => (
  <GameCard {...args} />
)

IsInCart.args = {
  isInCart: () => true
}
