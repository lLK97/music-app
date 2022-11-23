import * as type from '../action/actionType';

const initalState = {
    topListMusic: null,
    loadingTopListMusic: false,
    errorTopListMusic: null,
    currentMusic: null
}


export const topMusicReducer = (state = initalState, action) => {
    switch (action.type) {
        case type.TOP_MUSIC_LIST_STARTED:
            return {
                ...state, loadingTopListMusic: true
            }
        case type.TOP_MUSIC_LIST_SUCCESS:
            const { data } = action.payload
            return {
                ...state,
                topListMusic: data,
                loadingTopListMusic: false
            }
        case type.TOP_MUSIC_LIST_ERROR:
            const { error } = action.payload
            return {
                ...state,
                errorTopListMusic: error
            }
        default: return state
    }
}


export const currentMusicReducer = (state = initalState, action) => {
    switch (action.type) {
        case type.CURRENT_MUSIC_LIST:
            return {
                ...state,
                currentMusic: action.payload
            }
        default: return state
    }
}