import { ArrowBackIos as ArrowLeft } from '@styled-icons/material-outlined/ArrowBackIos'
import { ArrowForwardIos as ArrowRight } from '@styled-icons/material-outlined/ArrowForwardIos'

import { Settings } from 'react-slick'

import Slider from 'components/Slider'

import * as S from './styles'

const settings: Settings = {
  arrows: true,
  slidesToShow: 4,
  infinite: false,
  lazyLoad: 'ondemand',
  nextArrow: <ArrowRight aria-label="next image" />,
  prevArrow: <ArrowLeft aria-label="previous image" />,
  responsive: [
    {
      breakpoint: 1375,
      settings: {
        arrows: false,
        slidesToShow: 3.2,
        draggable: true
      }
    },
    {
      breakpoint: 1024,
      settings: {
        arrows: false,
        slidesToShow: 2.2,
        draggable: true
      }
    },
    {
      breakpoint: 768,
      settings: {
        arrows: false,
        slidesToShow: 2.2,
        draggable: true
      }
    }
  ]
}

export type GalleryImageProps = {
  src: string
  alt: string
}

export type GalleryProps = {
  items: GalleryImageProps[]
}

const Gallery = ({ items }: GalleryProps) => (
  <S.Wrapper>
    <Slider settings={settings}>
      {items.map((item, index) => (
        <img
          role="button"
          key={index}
          src={item.src}
          alt={`Thumb - ${item.alt}`}
        />
      ))}
    </Slider>
  </S.Wrapper>
)

export default Gallery
