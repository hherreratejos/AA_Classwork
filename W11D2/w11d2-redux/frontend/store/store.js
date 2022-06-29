import { legacy_createStore as createStore} from 'redux'
// import teasReducer from '../reducers/teas_reducer';
import rootReducer from '../reducers/root_reducer';

const configureStore = (preloadState = {}) => {
  return createStore(rootReducer, preloadState)
}

export default configureStore;