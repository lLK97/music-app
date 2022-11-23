import React from 'react';
import { Col, Row, Button, CardImg, CardTitle } from 'reactstrap';
import styles from '../modulesStyle/chartSongItem.module.css';
import { useDispatch } from 'react-redux';
import { currentMusic } from '../../store/action/musicListAction';

const ChartSongItem = props => {
    const dispatch = useDispatch();
    const handleCurrentMusic = (url_song) => {
        dispatch(currentMusic(url_song));
    }
    return (
        <Button className={styles.wrapper} onClick={() => handleCurrentMusic(props.url_song)}>
            <Row className={`m-0`}>
                <Col xs={1} className={styles.count}>
                    {
                        props.count
                    }
                </Col>
                <Col xs={1} className={styles.img}>
                    <CardImg src={props.url_img} />
                </Col>
                <Col xs={4} className={styles.name}>
                    <CardTitle className={styles.song_name}> {props.name}</CardTitle>
                    <CardTitle className={styles.author}>{props.author}</CardTitle>
                </Col>
                <Col xs={5} className={styles.album}>
                    <CardTitle>
                        {props.album}
                    </CardTitle>
                </Col>
                <Col xs={1} className={styles.time_run}>
                    <CardTitle>
                        {props.time_run}
                    </CardTitle>
                </Col>
            </Row>
        </Button >
    );
}

export default ChartSongItem;
