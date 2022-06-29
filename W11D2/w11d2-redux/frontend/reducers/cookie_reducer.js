import {RECIEVE_COOKIE} from '../actions/cookie_actions.js'

const cookieReducer = (state = {}, action) => {
  Object.freeze(state);
  const nextState = Object.assign({}, state);

  switch (action.type) {
    case RECIEVE_COOKIE:
      nextState[action.cookie.id] = action.cookie;
      return nextState;
    default:
      state;
  }
}

export default cookieReducer;