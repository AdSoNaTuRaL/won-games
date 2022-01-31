import { Story, Meta } from '@storybook/react/types-6-0'
import Banner, { BannerProps } from '.'

export default {
  title: 'Banner',
  component: Banner,
  args: {
    img: 'https://pbs.twimg.com/media/FIvRSddXMAImXfK?format=jpg&name=medium',
    title: 'Defy death',
    subtitle: '<p>Play the new <strong>CrashLands</strong> season</p>',
    buttonLabel: 'Buy Now',
    buttonLink: '/games/defy-death'
  },
  parameters: {
    layout: 'fullscreen'
  }
} as Meta

export const Basic: Story<BannerProps> = (args) => <Banner {...args} />

export const WithRibbon: Story<BannerProps> = (args) => (
  <div style={{ maxWidth: '104rem' }}>
    <Banner {...args} />
  </div>
)

WithRibbon.args = {
  ribbon: '20% OFF',
  ribbonSize: 'normal',
  ribbonColor: 'primary'
}
