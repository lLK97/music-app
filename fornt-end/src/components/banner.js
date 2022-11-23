import React from 'react';
import { CardBody } from 'reactstrap';
import styles from './modulesStyle/banner.module.css';

const Banner = props => {
    return (
        <CardBody className={styles.banner} style={{
            background: `linear-gradient(rgb(63, 76, 119, 0.6),rgb(32, 38, 57, 1) ),  url(${props.url_img})`
        }}>

        </CardBody>
    );
}

export default Banner;
