import React from 'react';
import Slider from "react-slick";
import styles from '../../modulesStyle/sliderComponent.module.css';

// 

const SldierComponent = () => {
    let settings = {
        infinite: true,
        speed: 500,
        arrows: false,
        slidesToShow: 2,
        slidesToScroll: 1
    }
    return (

        <Slider {...settings} >
            <div className={styles.wrapper_slide}>
                <div className={`${styles.slide_item} ${styles.slide_image1}`}>
                    <h1 className={styles.title}>
                        Ra mắt album - Concert Một vạn năm
                    </h1>
                    <h4>HÀ NỘI</h4>
                    <h4>20h00 - 01.10.2022</h4>
                    <h4>Trung tâm văn hóa - Thông tin thể thao Thanh Xuân 166 Khuất Duy tiến</h4>
                </div>
            </div>
            <div className={styles.wrapper_slide}>
                <div className={`${styles.slide_item} ${styles.slide_image2}`}>
                    <h1 className={styles.title}>
                        Liveshow - Nasa guitars concern series
                    </h1>
                    <h4>Live in Vietnamese</h4>
                    <h4>20h00 - 01.10.2022</h4>
                    <h4>HÀ NỘI - HỒ CHÍ MINH</h4>
                </div>
            </div>
            <div className={styles.wrapper_slide}>
                <div className={`${styles.slide_item} ${styles.slide_image3}`}>
                    <h1 className={styles.title}>
                        Liveshow - Live Concert 25
                    </h1>
                    <h4>Thành phố Hồ Chí Minh</h4>
                    <h4>20h00 - 17.01.2021</h4>
                    <h4>Thành phố Hồ Chí Minh</h4>
                </div>
            </div>
        </Slider >
    );
}

export default SldierComponent;
