import React from 'react';
import styles from './modulesStyle/category.module.css';
import { CardBody } from 'reactstrap';
import BlockThumb from '../components/model/blockThumb';
import Banner from '../components/banner';

const Category = () => {
    const jsonCategory = [
        {
            title: 'Tậm trạng và hoạt động',
            thumbnail: [
                {
                    name: 'WORKOUT',
                    url_image: 'https://www.planetfitness.com/sites/default/files/feature-image/xbreak-workout_602724.jpg.pagespeed.ic.v8byD7su-e.jpg'
                },
                {
                    name: 'WORKOUT',
                    url_image: 'https://www.planetfitness.com/sites/default/files/feature-image/xbreak-workout_602724.jpg.pagespeed.ic.v8byD7su-e.jpg'
                },
                {
                    name: 'WORKOUT',
                    url_image: 'https://www.planetfitness.com/sites/default/files/feature-image/xbreak-workout_602724.jpg.pagespeed.ic.v8byD7su-e.jpg'
                },
                {
                    name: 'WORKOUT',
                    url_image: 'https://www.planetfitness.com/sites/default/files/feature-image/xbreak-workout_602724.jpg.pagespeed.ic.v8byD7su-e.jpg'
                }
            ]
        },
    ]
    return (
        <React.Fragment>
            <Banner
                url_img={`https://dissertationtop.com/wp-content/uploads/2019/12/music-dissertation-topics.jpg`} />
            <CardBody className={styles.wrapper}>
                {
                    jsonCategory.map((item, index) => {
                        return (
                            <BlockThumb
                                key={index}
                                title={item.title}
                                thumbnail={item.thumbnail}
                                link='/category-category' />
                        )
                    })
                }
            </CardBody>
        </React.Fragment>
    );
}

export default Category;
