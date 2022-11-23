import React from 'react';
import styles from './App.module.css';
import Head from './components/head';
import { Route, Routes } from 'react-router-dom';
import { Row, Col, CardBody } from 'reactstrap';
import Home from './pages/Home';
import Navbar from './components/navbar';
import TopSong from './pages/TopSong';
import Artist from './pages/Artist'
import Category from './pages/Category';
import Archile from './pages/Archile';
import PlayList from './pages/PlayList';
import Detail from './pages/Detail';
import AudioPlay from './components/audioPlay/audioPlay';


import { useSelector } from 'react-redux';


const App = () => {
    const urlMusic = useSelector(state => state?.currentMusic?.currentMusic?.data)

    return (
        <>
            <Row className={`${styles.root} `}>
                {/* section navbar */}
                <Col lg='2' className={`${styles.left} ${urlMusic == '' ? '' : styles.audioPlay}`}>
                    <Navbar />
                </Col>
                {/* end */}
                <Col lg='10' className={`${styles.right} ${urlMusic == '' ? '' : styles.audioPlay}`}>
                    {/* seciton head  */}
                    <CardBody className={styles.wrapper_head}>
                        <Head />
                    </CardBody>
                    {/* end */}

                    {/* section content */}
                    <CardBody className={styles.content}>
                        <Routes>
                            <Route path='/home' element={<Home />} />
                            <Route path='/top-song' element={<TopSong />} />
                            <Route path='/artist' element={<Artist />} />
                            <Route path='/category' element={<Category />} />
                            <Route path='/category-topic' element={<Archile />} />
                            <Route path='/play-list' element={<PlayList />} />
                            <Route path='/detail' element={<Detail />} />
                        </Routes>
                    </CardBody>
                    {/* end */}

                </Col>

            </Row>
            {/* {
                urlMusic == '' ? '' : ( */}
            <AudioPlay urlMusic={urlMusic} />
            {/* )
            } */}

        </>

    );
}

export default App;
