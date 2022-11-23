import React from 'react';
import { BsMusicNoteList } from 'react-icons/bs';
import { Button, CardBody, CardImg, CardTitle, Col, Row } from 'reactstrap';
import Banner from '../components/banner';
import ChartSongItem from '../components/model/chartSongItem';
import styles from './modulesStyle/detail.module.css';


const Detail = () => {

    const topSong = [
        {
            count: 1,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        },
        {
            count: 2,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        },
        {
            count: 3,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        },
        {
            count: 4,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        },
        {
            count: 5,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        }, {
            count: 4,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        },
        {
            count: 5,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        }, {
            count: 4,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        },
        {
            count: 5,
            url_image: 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2021/12/13/984261/My-Tam-P-16013539097-01.png',
            name: 'NGƯỜI HÃY QUÊN EM ĐI',
            author: 'Mỹ Tâm',
            album: 'Tâm 9',
            time_run: '4:25'
        }
    ]
    return (
        <React.Fragment>
            <Banner
                url_img={`https://thumbs.dreamstime.com/b/cool-man-enjoy-music-his-favorite-playlist-dj-party-happy-man-dancing-yellow-background-listen-to-music-cool-man-enjoy-music-173864242.jpg`}
            />
            <CardBody className={styles.wrapper}>
                <Row>
                    <Col xs={4}>
                        <CardBody className={styles.img}>;a
                        </CardBody>
                        <CardTitle className={`text-center h5 m-3`}>
                            Mỹ Tâm
                        </CardTitle>
                        <CardTitle className={`text-center h5 m-3 ${styles.wrapper_button}`}>
                            <Button color="success" className={`${styles.button}`}>Phát lại</Button>
                            <Button color="success" className={`${styles.button}`}>Phát Tiếp</Button>
                        </CardTitle>
                        <CardTitle className={`${styles.wrapper_button}`}>
                            <Button color="success" className={styles.button}>Phát ngẫu nhiên</Button>
                        </CardTitle>
                    </Col>
                    <Col xs={8}>
                        <CardTitle className={`${styles.count} h6`}>
                            <BsMusicNoteList /> &nbsp; 3,245 bài hát
                        </CardTitle>
                        {
                            topSong.map((item, index) => {
                                return (
                                    <ChartSongItem
                                        count={index + 1}
                                        url_img={item.url_image}
                                        name={item.name}
                                        author={item.author}
                                        album={item.album}
                                        time_run={item.time_run}
                                    />
                                )
                            })
                        }
                    </Col>
                </Row>
            </CardBody>
        </React.Fragment >
    );
}

export default Detail;
