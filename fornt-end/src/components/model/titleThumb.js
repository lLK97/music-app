import React from 'react';
import { Link } from 'react-router-dom';
import { Col, Row } from 'reactstrap';
import styles from '../modulesStyle/titleThumb.module.css';


const TitleThumb = props => {
    return (
        <div className={styles.wrapper}>
            <Row className={'h2'}>
                <Col xs={6} className={styles.title}>

                    {
                        props.title
                    }

                </Col>
                {
                    props.hidden != false ? (
                        <Col xs={6} className={styles.link}>
                            <div className={styles.link_text}>
                                <Link to={props.link}>
                                    Tất cả <i className="fa fa-angle-double-right" aria-hidden="true"></i>
                                </Link>
                            </div>
                        </Col>
                    ) : ''
                }

            </Row>
        </div>
    );
}

export default TitleThumb;
