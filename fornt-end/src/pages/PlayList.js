import React from 'react';
import styles from './modulesStyle/playList.module.css';
import { Button, CardBody, CardImg, CardTitle, Col, Row } from 'reactstrap';
import Banner from '../components/banner';
import BlockThumb from '../components/model/blockThumb';
import { BsPlusCircle } from 'react-icons/bs';

const PlayList = () => {
    const jsonPlayList = [
        {
            url_image: 'https://www.prsformusic.com/-/media/images/mmagazine/images/2017/04/streaming2017.ashx',
            name: 'PlayList'
        },
        {
            url_image: 'https://www.prsformusic.com/-/media/images/mmagazine/images/2017/04/streaming2017.ashx',
            name: 'PlayList'
        },
        {
            url_image: 'https://www.prsformusic.com/-/media/images/mmagazine/images/2017/04/streaming2017.ashx',
            name: 'PlayList'
        },
        {
            url_image: 'https://www.prsformusic.com/-/media/images/mmagazine/images/2017/04/streaming2017.ashx',
            name: 'PlayList'
        },
        {
            url_image: 'https://www.prsformusic.com/-/media/images/mmagazine/images/2017/04/streaming2017.ashx',
            name: 'PlayList'
        },
        {
            url_image: 'https://www.prsformusic.com/-/media/images/mmagazine/images/2017/04/streaming2017.ashx',
            name: 'PlayList'
        },
        {
            url_image: 'https://www.prsformusic.com/-/media/images/mmagazine/images/2017/04/streaming2017.ashx',
            name: 'PlayList'
        },
        {
            url_image: 'https://www.prsformusic.com/-/media/images/mmagazine/images/2017/04/streaming2017.ashx',
            name: 'PlayList'
        }
    ]
    return (
        <React.Fragment>
            <Banner
                url_img={'https://www.nattyb.co.uk/wp-content/uploads/2015/08/THE-PLAYLIST-BANNER.jpg'} />
            <CardBody className={styles.wrapper}>
                <Row>
                    <Col xs={4}>
                        <button className={styles.add}>
                            <BsPlusCircle />
                            <CardTitle className={`h5 mt-3`}>
                                Tạo playList mới
                            </CardTitle>
                        </button>
                    </Col>
                    <Col xs={8}>
                        <BlockThumb
                            thumbnail={jsonPlayList}
                            hidden={true}
                            column={6}
                        />
                    </Col>
                </Row>

            </CardBody>
        </React.Fragment >
    );
}

export default PlayList;
