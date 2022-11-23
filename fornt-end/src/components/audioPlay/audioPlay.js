import React from 'react';
import AudioPlayer from 'react-h5-audio-player';
import { CardBody } from 'reactstrap';
import 'react-h5-audio-player/lib/styles.css';
import styles from '../modulesStyle/reactAudio.module.css';


const AudioPlay = props => {
    console.log(props.urlMusic)
    return (
        <CardBody className={styles.wrapper_audio}>
            <AudioPlayer
                autoPlay
                src={props.urlMusic}
                onPlay={e => console.log("onPlay")} />
        </CardBody>
    );
}

export default AudioPlay;
