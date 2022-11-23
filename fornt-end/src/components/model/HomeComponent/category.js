import React from 'react';
import { CardBody, Row, Col } from 'reactstrap';
import styles from '../../modulesStyle/category.module.css';
import TitleThumb from '../titleThumb';

const Category = () => {
    const category = [
        {
            url_image: 'https://poster.keepcalmandposters.com/default/5546931_us_uk_music.jpg'
        },
        {
            url_image: 'https://gominhlong.com/wp-content/uploads/2017/06/Ballad-Laminate.jpg'
        },
        {
            url_image: 'http://adammuzic.vn/wp-content/uploads/2017/04/maxresdefault-adammuzic-edm.jpg'
        }
    ]
    return (
        <CardBody className={styles.wrapper}>
            <TitleThumb
                link='/category-topic?topic=category'
            />
            <Row className={styles.category}>
                {
                    category.map((item, index) => {
                        return (
                            <Col className={styles.block} key={index}>
                                <CardBody style={{ background: `url(${item.url_image})` }} className={styles.image}>
                                </CardBody>
                            </Col>
                        )
                    })
                }
            </Row>
        </CardBody >
    );
}

export default Category;
