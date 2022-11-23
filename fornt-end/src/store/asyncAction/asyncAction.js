import { topMusicListError, topMusicListStarted, topMusicListSuccess } from "../action/musicListAction";
import { topListMusic } from '../API/url';



export const getTopMusic = () => async dispatch => {
    dispatch(topMusicListStarted())
    try {
        const res = await fetch(topListMusic);
        const data = await res.json();
        dispatch(topMusicListSuccess(data));
    } catch (err) {
        dispatch(topMusicListError(err));
    }
}
