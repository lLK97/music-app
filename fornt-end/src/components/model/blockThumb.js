import React from 'react';
import { Col, CardBody, CardImgOverlay, CardTitle, Row, Card } from 'reactstrap';
import styles from '../modulesStyle/blockThumb.module.css';
import TitleThumb from './titleThumb';

const BlockThumb = props => {
    return (
        <CardBody className={`mb-5`}>
            {
                props.hidden != true ? (
                    <CardTitle className={`mb-3 h2`}>
                        <TitleThumb
                            title={props.title}
                            link={props.link} />
                    </CardTitle>
                ) : ''
            }
            <Row className='m-0'>
                {
                    props.thumbnail.map((item, index) => {
                        return (
                            <Col key={index} lg={props.column} className={styles.column}>
                                <Card className={styles.wrapper_thumb}>
                                    <CardBody style={{ backgroundImage: `url(${item.url_image})` }} className={styles.img} >
                                    </CardBody>
                                    <CardImgOverlay className={styles.img_overlay}>
                                        <CardTitle className={`${styles.name} h2`}>
                                            {item.name}
                                        </CardTitle>
                                    </CardImgOverlay>
                                </Card>
                            </Col>
                        )
                    })
                }
            </Row>
        </CardBody >
    )
}

export default BlockThumb;
