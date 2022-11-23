import React from 'react';
import { Button, CardBody, CardImg, CardTitle, Col, Row } from 'reactstrap';
import Portal from '../../Portal/portal';
import styles from '../../modulesStyle/newSong.module.css';
import styless from '../../modulesStyle/songthumb.module.css';
import styleMenuSong from '../../modulesStyle/contextMenu.module.css'


const jsonSong = [
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://i.ytimg.com/vi/iK5pQQqAuDQ/maxresdefault.jpg',
        name: 'Bài hát không để đi diễn',
        author: 'Đen vâu',
        dayUpdate: 6
    }
]
const jsonAblumn = [
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    },
    {
        img: 'https://ss-images.saostar.vn/2019/11/06/6391684/vau-ngang-copy.jpg',
        name: 'Mười năm',
        author: 'Đen vâu',
        dayUpdate: 6
    }

]

const SongThumb = props => {
    return (
        <>

            <Col xs='4' className={styless.wrapper}>
                <Row>
                    <Col xs={4}>
                        <CardImg src={props.img} className={styless.url_img} />
                    </Col>
                    <Col xs={7}>
                        <CardTitle >
                            {props.name}
                        </CardTitle>
                        <CardTitle>
                            {props.author}
                        </CardTitle>
                        <CardTitle>
                            {props.dayUpdate} ngày trước
                        </CardTitle>
                    </Col>
                    <Col xs={1} className={styless.icon}>
                        <i className="fa fa-ellipsis-h" aria-hidden="true" onClick={(e) => props.handleShowSong(
                            props.img,
                            props.name,
                            props.author,
                            props.dayUpdate,
                            e.clientX,
                            e.clientY,
                            props.index
                        )}></i>
                    </Col>
                </Row>
            </Col >
        </>
    )
}

const ContextMenuSong = props => {
    const listContextMenu = [{
        icon: 'fa fa-heart',
        name: 'Thêm vào thư viện'
    }, {
        icon: 'fa fa-list',
        name: 'Thêm vào danh sách phát'
    }, {
        icon: 'fa fa-step-forward',
        name: 'Phát tiếp theo'
    }, {
        icon: 'fa fa-plus-circle',
        name: 'Thêm vào playlist'
    }]
    return (
        <Portal>
            <CardBody className={`${styleMenuSong.wrapper} popup_song`}
                style={{
                    top: `${props.top}px`,
                    left: `${props.left}px`
                }}>
                <Row className='p-0 m-0 mb-3 popup_song'>
                    <Col xs={4} className='p-0 popup_song'>
                        <CardImg src={props.img} />
                    </Col>
                    <Col xs={8}>
                        <CardTitle className='popup_song'>
                            {props.name}
                        </CardTitle>
                        <CardTitle className='popup_song'>
                            {props.author}
                        </CardTitle>
                    </Col>
                </Row>
                <Row className={`${styleMenuSong.utilities} p-0 m-0 mb-3 popup_song`}>
                    <Col xs={6} className={`${styleMenuSong.itemUtilities} popup_song`}>
                        <i className="fa fa-download popup_song" aria-hidden="true"></i>
                        <CardTitle className='popup_song'>
                            Tải xuống
                        </CardTitle>
                    </Col>
                    <Col xs={6} className={`${styleMenuSong.itemUtilities} popup_song`}>
                        <i className="fa fa-list popup_song" aria-hidden="true"></i>
                        <CardTitle className='popup_song'>
                            Lời bài hát
                        </CardTitle>
                    </Col>
                </Row>
                {
                    listContextMenu.map((item, index) => {
                        return (
                            <CardTitle key={index} className={`m-2 popup_song`}>
                                <i className={`${item.icon} ${styleMenuSong.icon} p-0 mb-3 mr-3 popup_song`} aria-hidden="true"></i>
                                <span className='popup_song'>
                                    {
                                        item.name
                                    }
                                </span>
                            </CardTitle>
                        )
                    })
                }
            </CardBody>
        </Portal >
    )
}


const NewSong = () => {

    const [active, setactive] = React.useState(false);
    const [activeMenuSong, setactiveMenuSong] = React.useState(false);
    // 
    const [popupImg, setpopupImg] = React.useState(false);
    const [popupName, setpopupName] = React.useState(false);
    const [popupAuthor, setpopupAuthor] = React.useState(false);
    const [popupDayUpdate, setpopupDayUpdate] = React.useState(false);
    const [top, settop] = React.useState('');
    const [left, setleft] = React.useState('');
    const [position, setposition] = React.useState('');

    const handleShowSong = (
        img,
        name,
        author,
        dayUpdate,
        left,
        top,
        index
    ) => {


        if (activeMenuSong == true && index == position) {
            setactiveMenuSong(!activeMenuSong);

        }
        if (activeMenuSong == false ||
            (activeMenuSong == true && index != position)) {
            setactiveMenuSong(true);
            setpopupImg(img);
            setpopupName(name);
            setpopupAuthor(author);
            setpopupDayUpdate(dayUpdate);
            setleft(left);
            settop(top);
            setposition(index);
        }
    }

    React.useEffect(() => {
        document.addEventListener('mousedown', (e) => {
            if (!e.target.classList.contains('popup_song')) {
                setactiveMenuSong(false);
            }
        })
        document.addEventListener('wheel', (e) => {
            setactiveMenuSong(false);
        })
    }, [])
    return (
        <React.Fragment>
            <div className={styles.wrapper}>
                <CardTitle className={'h2'}>
                    Bài hát mới
                </CardTitle>
                <CardTitle className={styles.wrapper_button}>
                    <Button className={`${styles.button} text-light`} color={active == false ? 'success' : ''} onClick={() => setactive(false)} >Bài hát</Button>
                    <Button className={`${styles.button} text-light`} color={active == true ? 'success' : ''} onClick={() => setactive(true)}>Album</Button>
                    <div className={styles.link}>
                        Tất cả <i className="fa fa-angle-double-right" aria-hidden="true"></i>
                    </div>
                </CardTitle>

            </div>
            <Row className={styles.list_song}>
                {
                    active == false ? jsonSong.map((item, index) => {
                        return (
                            <SongThumb
                                key={index}
                                img={item.img}
                                name={item.name}
                                author={item.author}
                                dayUpdate={item.dayUpdate}
                                handleShowSong={handleShowSong}
                                index={index}
                            />
                        )
                    }) : jsonAblumn.map((item, index) => {
                        return (
                            <SongThumb
                                key={index}
                                img={item.img}
                                name={item.name}
                                author={item.author}
                                dayUpdate={item.dayUpdate}
                                handleShowSong={handleShowSong}
                                index={index}
                            />
                        )
                    })
                }
            </Row>
            {
                activeMenuSong == true ? (
                    <ContextMenuSong
                        img={popupImg}
                        name={popupName}
                        author={popupAuthor}
                        dayUpdate={popupDayUpdate}
                        top={top}
                        left={left}
                    />
                ) : ''

            }
        </React.Fragment>
    );
}

export default NewSong;
