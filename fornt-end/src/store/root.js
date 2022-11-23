import { combineReducers } from 'redux'
import { createStore, applyMiddleware } from 'redux';
import thunk from 'redux-thunk'
import { currentMusicReducer, topMusicReducer } from './reducer/musicReducer';

const rootReducer = combineReducers({
    topMusic: topMusicReducer,
    currentMusic: currentMusicReducer
})

const store = createStore(rootReducer, applyMiddleware(thunk));

export default store;