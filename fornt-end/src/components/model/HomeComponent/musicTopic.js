import React from 'react';
import { CardBody, Row, Col, CardTitle } from 'reactstrap';
import styles from '../../modulesStyle/musicTopic.module.css';
import TitleThumb from '../titleThumb';

const MusicCategory = () => {
    const topic = [
        {
            url_image: 'http://media.vienyhocungdung.vn/Upload/39/2021/Thang_6/130398a3-c510-4e6f-849f-9f9c3e450819.png',
            title: 'Khởi động ngày mới'
        },
        {
            url_image: 'https://i.ytimg.com/vi/SW8zKGiTUtk/maxresdefault.jpg',
            title: 'Thư giãn '
        },
        {
            url_image: 'https://health.clevelandclinic.org/wp-content/uploads/sites/3/2022/09/Children-Amount-of-Sleep-135538269-770x533-1.jpg',
            title: 'Ngủ ngon'
        },
        {
            url_image: 'https://biquyet.com.vn/wp-content/uploads/2022/04/ky-nang-tap-trung-la-gi.png',
            title: 'Tập trung'
        },
        {
            url_image: 'https://suckhoedoisong.qltns.mediacdn.vn/324455921873985536/2022/7/10/hinh-anh-cac-loai-hinh-du-lich-3-1657423025597-1657423027180128362217.jpeg',
            title: 'Du lịch'
        },
    ]
    return (
        <CardBody className={styles.wrapper}>
            <TitleThumb
                title='Nhạc theo chủ đề'
                link='/category-topic?topic=topic' />
            <Row className={styles.musicCategory}>
                {
                    topic.map((item, index) => {
                        return (
                            <Col className={styles.block} key={index}>
                                <CardBody style={{ background: `url(${item.url_image})` }} className={styles.image}>
                                </CardBody>

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
        </CardBody >
    );
}

export default MusicCategory;
