import React from 'react';
import { CardBody } from 'reactstrap';
import Artist from '../components/model/HomeComponent/artist';
import Category from '../components/model/HomeComponent/category';
import MusicTopic from '../components/model/HomeComponent/musicTopic';
import NewSong from '../components/model/HomeComponent/NewSong';
import SldierComponent from '../components/model/HomeComponent/SldierComponent';

import styles from './modulesStyle/home.module.css';

const Home = () => {
    return (
        <CardBody className={styles.page_home}>
            <CardBody className={styles.wrapper_section}>
                <SldierComponent />
            </CardBody>
            <CardBody className={styles.wrapper_section}>
                <NewSong />
                <Artist />
                <MusicTopic />
                <Category />
            </CardBody>
        </CardBody>
    );
}

export default Home;
