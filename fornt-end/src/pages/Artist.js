import React from 'react';
import { CardBody } from 'reactstrap';
import Banner from '../components/banner';
import BlockThumb from '../components/model/blockThumb';
import styles from './modulesStyle/artistPage.module.css';

const artistThumbJson = [
    {
        title: 'Nghệ sỹ Việt Nam',
        thumbnail: [
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            },
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            },
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            },
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            },
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            }
        ]
    },
    {
        title: 'Nghệ sỹ Việt Nam',
        thumbnail: [
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            },
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            },
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            },
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            },
            {
                name: 'Mỹ Tâm',
                url_image: 'https://bazaarvietnam.vn/wp-content/uploads/2020/01/my-tam-111.jpg'
            }
        ]
    }
]



const Artist = () => {
    return (
        <React.Fragment>
            <Banner
                url_img={'https://variety.com/wp-content/uploads/2022/07/Music-Streaming-Wars.jpg'}
            />
            <CardBody className={styles.content}>
                {
                    artistThumbJson.map((item, index) => {
                        return (
                            <BlockThumb
                                key={index}
                                title={item.title}
                                thumbnail={item.thumbnail}
                                link='/category-artist'
                            />
                        )
                    })
                }
            </CardBody>
        </React.Fragment>
    );
}

export default Artist;
