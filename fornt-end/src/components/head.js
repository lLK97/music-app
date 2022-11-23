import React from 'react';
import { CardBody } from 'reactstrap';
import { AiOutlineArrowLeft, AiOutlineArrowRight } from "react-icons/ai";
import { BsPersonCircle, BsNut } from "react-icons/bs";
import styles from './modulesStyle/head.module.css';

import { Row, Col } from 'reactstrap';

import FormSetting from './model/formSetting';
import FormLogin from './model/formLogin';

const Head = () => {
    // show, hide form setting when active
    const [isSetting, setisSetting] = React.useState(false);
    const setting = () => {
        setisSetting(!isSetting);
    }
    //end

    // show, hide form login when active
    const [islogin, setislogin] = React.useState(false);
    const login = () => {
        setislogin(!islogin);
    }
    const ishide = (res) => {
        setislogin(res)
    }
    //end
    return (
        <CardBody className={styles.section_head}>
            <Row className={styles.wrapper_head}>
                <Col xs={1} className={styles.left_icon}>
                    <AiOutlineArrowLeft />
                    <AiOutlineArrowRight />
                </Col>
                <Col xs='6' className={styles.search_box}>
                    <input type="search" name="" id="" />
                </Col>
                <Col xs='5' className={styles.right_icon}>
                    <div>
                        <BsNut onClick={setting} />
                        <FormSetting isShow={isSetting} />
                    </div>
                    <div>
                        <BsPersonCircle onClick={login} />
                        <FormLogin isShow={islogin} isHide={ishide} />
                    </div>
                </Col>
            </Row>
        </CardBody>
    );
}

export default Head;
