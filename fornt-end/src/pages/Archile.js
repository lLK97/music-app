import React from 'react';
import { CardBody, CardTitle, Col, Row } from 'reactstrap';
import BlockThumb from '../components/model/blockThumb';
import styles from './modulesStyle/archile.module.css';




const Archile = () => {
    const [activeFilter, setactiveFilter] = React.useState();
    const jsonCategory = [
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        },
        {
            url_image: 'https://m.media-amazon.com/images/M/MV5BZDYzNmI0NjUtNWNmYi00MmZiLWFkMDctMTllNTYzMTZiMDc0XkEyXkFqcGdeQXVyMjgzMDQwNTA@._V1_FMjpg_UX1000_.jpg',
            name: 'ADELE'
        }
    ]
    return (
        <React.Fragment>
            <CardBody className={styles.banner}>

            </CardBody>
            <Row className={`${styles.wrapper}`}>
                <Col xs={12}>
                    <Row className={styles.wrapper_filter}>
                        <Col xs={2} className={`${styles.block_item} ${activeFilter == 'ALL' ? styles.active_filter : ''}`}
                            onClick={() => setactiveFilter('ALL')}
                        >
                            <CardTitle>
                                TẤT CẢ
                            </CardTitle>
                        </Col>
                        <Col xs={2} className={`${styles.block_item} ${activeFilter == 'VN' ? styles.active_filter : ''}`}
                            onClick={() => setactiveFilter('VN')}
                        >
                            <CardTitle>
                                VIỆT NAM
                            </CardTitle>
                        </Col>
                        <Col xs={2} className={`${styles.block_item} ${activeFilter == 'US' ? styles.active_filter : ''}`}
                            onClick={() => setactiveFilter('US')}
                        >
                            <CardTitle>
                                US - UK
                            </CardTitle>
                        </Col>
                        <Col xs={2} className={`${styles.block_item} ${activeFilter == 'KPOP' ? styles.active_filter : ''}`}
                            onClick={() => setactiveFilter('KPOP')}
                        >
                            <CardTitle>
                                KPOP
                            </CardTitle>
                        </Col>
                    </Row>
                </Col>
                <BlockThumb
                    hidden={true}
                    thumbnail={jsonCategory}
                    column={3}
                />
            </Row>





        </React.Fragment >
    );
}



export default Archile;