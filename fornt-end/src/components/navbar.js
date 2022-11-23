import React from 'react';
import styles from './modulesStyle/navbar.module.css';
import '../assets/font/Italianno-Regular.ttf'

import { CardBody, CardTitle, Col, Row } from 'reactstrap';
import { BsFillStarFill, BsFillEyeFill, BsFillPersonFill, BsFillGridFill, BsPlayCircleFill } from "react-icons/bs";


import image1 from '../assets/image/icon_sidebar.png'
import image2 from '../assets/image/icon_login.png'
import BoxSidebar from './model/boxSidebar';
import { Link, useLocation } from 'react-router-dom';




const Navbar = () => {
    // list of item sidebar 
    const itemMenu = [{
        index: 1,
        icon: <BsFillStarFill className={styles.icon} />,
        title: 'Top song',
        link: '/top-song'
    },
    {
        index: 2,
        icon: <BsFillEyeFill className={styles.icon} />,
        title: 'Khám phá',
        link: '/home'
    }, {
        index: 3,
        icon: <BsFillPersonFill className={styles.icon} />,
        title: 'Nghệ sỹ',
        link: '/artist'
    },
    {
        index: 4,
        icon: <BsFillGridFill className={styles.icon} />,
        title: 'Thể loại',
        link: '/category'
    },
    {
        index: 5,
        icon: <BsPlayCircleFill className={styles.icon} />,
        title: 'Playlist',
        link: '/play-list'
    }]
    //end

    // Banner List 
    const banner_list = [{
        background: image1,
        description: 'Nghe nhạc theo phong cách riêng của bạn',
        title_button: 'Tạo playlist'
    },
    {
        background: image2,
        description: 'Đăng nhập để bắt đầu tạo playlist của bạn',
        title_button: 'Đăng nhập'
    }]
    // end 


    // active style item menu
    const slug = useLocation().pathname;
    //end

    return (
        <Row className={styles.wrapper_navbar}>
            <Col xs="12" className={styles.logo_navbar}>
                <CardTitle className={`${styles.title} h3`}>
                    My Style, My music
                </CardTitle>
            </Col>
            <CardBody className={styles.wrapper_item_menu}>
                {
                    itemMenu.map((item) => {
                        return (

                            <Link to={item.link} key={item.index}>
                                <Col xs='12' className={`${styles.item_menu} ${item.link == slug ? styles.active_item : ''}`} >
                                    {
                                        item.icon
                                    }
                                    <CardTitle className='p'>
                                        {
                                            item.title
                                        }
                                    </CardTitle>
                                </Col>
                            </Link>

                        )
                    }
                    )
                }
            </CardBody>
            {
                banner_list.map((item, index) => {
                    return (
                        <React.Fragment>
                            <BoxSidebar
                                key={index}
                                background={item.background}
                                description={item.description}
                                title_button={item.title_button} />
                        </React.Fragment>
                    )
                })
            }
        </Row >
    );
}

export default Navbar;
