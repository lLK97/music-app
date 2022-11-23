import React, { useRef } from 'react';
import styles from '../modulesStyle/login.module.css';
import { Portal } from 'react-portal';
import { Button, CardBody, CardTitle } from 'reactstrap';
import { BsFacebook, BsGoogle, BsArrowRightShort } from "react-icons/bs";
import { Link } from 'react-router-dom';

const FormLogin = props => {
    const ref_login = useRef();

    const outside = (e) => {

        if (e.target == ref_login.current) {
            props.isHide(false)

        }
    }
    return (
        <Portal >
            <div className={`${styles.wrapper_login} ${props.isShow == true ? styles.show : styles.hide}`} onClick={(e) => outside(e)} ref={ref_login}>
                <div className={styles.inner_login} >
                    <CardTitle className={`${styles.form_title} h1`}>Create Your Style</CardTitle>
                    <CardTitle className={styles.wrapper_form_input}>
                        <input type="text" name="" id="" placeholder="Tên đăng nhập" className={styles.form_input} />
                    </CardTitle>
                    <CardTitle className={styles.wrapper_form_input}>
                        <input type="password" name="" id="" placeholder="Mật Khẩu" className={styles.form_input} />
                    </CardTitle>
                    <CardTitle >
                        <Button className={styles.form_button}>
                            Đăng nhập
                        </Button>
                    </CardTitle>
                    <CardTitle className={`${styles.description} h3`}>Or Sign up</CardTitle>
                    <CardTitle className={styles.icon_signup}>
                        <BsFacebook className={styles.icon} />
                        <BsGoogle className={styles.icon} />
                    </CardTitle>
                    <CardTitle className={`${styles.text_bottom} h5`}>
                        <Link to='/'>
                            Create your account &nbsp; <BsArrowRightShort />
                        </Link>
                    </CardTitle>
                </div>
            </div>
        </Portal>
    );
}

export default FormLogin;
