import { combineReducers } from "redux";
import teasReducer from "./teas_reducer";
import cookieReducer from "./cookie_reducer";

const rootReducer = combineReducers({
  teas: teasReducer,
  cookies: cookieReducer
})

export default rootReducer