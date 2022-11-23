import React from 'react';
import styles from '../../modulesStyle/homeArtist.module.css';
import { Col, Row, CardBody, CardImg, CardTitle } from 'reactstrap';
import TitleThumb from '../titleThumb';

const Artist = () => {
    const artistTop = [
        {
            url_image: 'https://avatar-ex-swe.nixcdn.com/singer/avatar/2022/09/06/8/9/f/3/1662436842575_600.jpg',
            title: 'Vũ'
        },
        {
            url_image: 'https://dvt.vn/uploads/wp-content/uploads/2021/01/den-vau-6.jpg',
            title: 'Đen Vâu'
        },
        {
            url_image: 'https://premiojovem.com.br/wp-content/uploads/2022/01/Adele-faz-chamada-de-video-com-fas-apos-adiamento-de-shows.jpg',
            title: 'Adele'
        },
        {
            url_image: 'https://i.guim.co.uk/img/media/c419b73b6a519f650177cd4d59dc205cc0a34e2d/851_53_2331_1400/master/2331.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=2de08aa08e2c73215bac930bb22d28a0',
            title: 'Ed Sheeran'
        }

    ]
    return (
        <CardBody className={styles.wrapper}>
            <TitleThumb
                title='Nghệ sỹ nổi bật'
                link='/category-topic?topic=artist'
            />
            <Row className={styles.artist}>
                {
                    artistTop.map((item, index) => {
                        return (
                            <Col className={`${styles.block_artist} h5`} key={index}>
                                <CardImg src={item.url_image} className={styles.image} />
                                <CardTitle className={`text-center mt-3`}>
                                    {
                                        item.title
                                    }
                                </CardTitle>
                            </Col>
                        )
                    })
                }
            </Row>
        </CardBody>
    );
}

export default Artist;
