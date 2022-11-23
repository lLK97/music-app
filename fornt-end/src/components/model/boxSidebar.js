import React from 'react';
import { CardBody, CardTitle, Button } from 'reactstrap';
import styles from '../modulesStyle/boxSidebar.module.css';


const BoxSidebar = props => {
    return (
        <CardBody className={styles.wrapper_boxSidebar} style={{ backgroundImage: `url(${props.background})` }}>
            <CardTitle className={`${styles.title} h6`}>
                {
                    props.description
                }
            </CardTitle>
            <CardTitle className={styles.wrapper_button}>
                <Button className={styles.button}>
                    {
                        props.title_button
                    }
                </Button>
            </CardTitle>
        </CardBody >
    );
}

export default BoxSidebar;
