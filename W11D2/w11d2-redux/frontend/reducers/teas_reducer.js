import {RECIEVE_TEA} from '../actions/tea_actions.js'

const teasReducer = (state = {}, action) => {
  Object.freeze(state);
  const nextState = Object.assign({}, state);

  switch (action.type) {
    case RECIEVE_TEA:
      nextState[action.tea.id] = action.tea;
      return nextState;
    default:
      state;
  }
}

export default teasReducer;