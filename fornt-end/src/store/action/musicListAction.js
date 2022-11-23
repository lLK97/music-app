import * as type from '../action/actionType';


//get top list music

export const topMusicListStarted = () => {
    return {
        type: type.TOP_MUSIC_LIST_STARTED
    }
}


export const topMusicListSuccess = (data) => {
    return {
        type: type.TOP_MUSIC_LIST_SUCCESS,
        payload: {
            data
        }
    }
}

export const topMusicListError = (err) => {
    return {
        type: type.TOP_MUSIC_LIST_ERROR,
        payload: {
            err
        }
    }
}
//end

// get current Music List
export const currentMusic = (data) => {
    return {
        type: type.CURRENT_MUSIC_LIST,
        payload: {
            data
        }
    }
}
//end



