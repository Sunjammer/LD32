package game;

import luxe.Text;
import luxe.Input;
import game.states.*;

class LDGame extends luxe.Game {

        public var _currentState:IState;

        public function setState(newState:IState){
            if(_currentState!=null) _currentState.exit(this);
            _currentState = null;
            if(newState!=null) {
                _currentState = newState.enter(this);
            }
        }

        override function ready() {
            trace("WELCOME TO THE SHIT HEAP");
            setState(new MenuState());
        }

        override function onkeyup( e:KeyEvent ) {
            if(e.keycode == Key.escape) {
                Luxe.shutdown();
            }

        }

        override function update(dt:Float) {
            if(_currentState!=null){
                var s = _currentState.update(this);
                if(s != _currentState) setState(s);
            }
        }

}
