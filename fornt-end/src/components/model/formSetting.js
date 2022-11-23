import React from 'react';
import styles from '../modulesStyle/setting.module.css';
import { BsExclamationCircle, BsFillStickyFill, BsKey } from "react-icons/bs";
import { CardBody, CardTitle, Col, Row } from 'reactstrap';
import { Link } from 'react-router-dom';


const FormSetting = props => {
    // list Item Setting
    const list_item_setting = [{

        icon: <BsExclamationCircle />,
        title: 'Giới thiệu',
        link: '/about'
    },
    {
        icon: <BsFillStickyFill />,
        title: 'Thỏa thuận sử dụng',
        link: '/rule'
    },
    {
        icon: <BsKey />,
        title: 'Chính sách bảo mật',
        link: '/security'
    }]
    //end 

    return (

        <CardBody className={`${styles.wrapper_setting} ${props.isShow == true ? styles.show : styles.hide}`}>
            {
                list_item_setting.map((item, index) => {
                    return (
                        <Link to={item.link} key={index}  >

                            <Col xs='12' className={`${styles.item_menu}`} >
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
                })
            }
        </CardBody>

    );
}

export default FormSetting;
