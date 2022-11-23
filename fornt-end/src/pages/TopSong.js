import React from 'react';
import { CardBody, CardTitle } from 'reactstrap';
import Banner from '../components/banner';
import ChartSongItem from '../components/model/chartSongItem';
import styles from './modulesStyle/topsong.module.css';
import { useSelector, useDispatch } from 'react-redux';
import { getTopMusic } from '../store/asyncAction/asyncAction';
import { convertSecondToMinute } from '../ultils/ultils';

const TopSong = () => {
    const dispatch = useDispatch();
    const topSong = useSelector(state => state.topMusic.topListMusic);
    React.useEffect(() => {
        dispatch(getTopMusic())
    }, [])

    return (
        <React.Fragment>
            <Banner
                url_img={'https://sp-ao.shortpixel.ai/client/q_glossy,ret_img,w_1600/https://7entertainment.vn/wp-content/uploads/2019/12/edm-party.jpg'}
            />
            <CardBody className={styles.content}>
                <CardTitle className={`h2 mb-3`}>
                    Nhạc nổi bật
                </CardTitle>
                {

                    topSong != null ? topSong.map((item, index) => {
                        return (

                            <ChartSongItem
                                count={index + 1}
                                url_img={item.url_image}
                                name={item.title}
                                author={item.artist.name_artist}
                                album={item.album.name_albums}
                                time_run={convertSecondToMinute(item.second_time)}
                            // url_song={item.url_song}
                            />
                        )
                    }) : ''
                }
            </CardBody>
        </React.Fragment>
    );
}

export default TopSong;
