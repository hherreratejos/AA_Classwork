import configureStore from './store/store.js'
import {recieveTea, RECIEVE_TEA} from './actions/tea_actions.js'
import {recieveCookie, RECIEVE_COOKIE} from './actions/cookie_actions.js'

document.addEventListener("DOMContentLoaded", ()=> {
    const root = document.getElementById("root");
    const store = configureStore();
    window.store = store;
    window.recieveTea = recieveTea;
    window.recieveCookie = recieveCookie;
})