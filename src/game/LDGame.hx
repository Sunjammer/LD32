package game;

import luxe.Text;
import luxe.Input;
import game.states.*;

class LDGame extends luxe.Game {

        public var _currentState:IState;
        var _deltaTime:Float = 0;
        public var deltaTime(get, null):Float;
        function get_deltaTime():Float{
            return _deltaTime;
        }
        public function setState(newState:IState){
            if(newState == _currentState) return;
            if(_currentState!=null) _currentState.exit(this);
            _currentState = null;
            KeyManager.reset();
            if(newState != null) {
                _currentState = newState;
                var nState = newState.enter(this);
                if(nState != _currentState)
                    setState(nState);
            }
        }

        override function ready() {
            trace("WELCOME TO THE SHIT HEAP");
            setState(new MenuState());
        }

        override function onkeydown(event:KeyEvent){
            KeyManager.setKeyDown(event.keycode);
        }

        override function onkeyup(event:KeyEvent){
            KeyManager.setKeyUp(event.keycode);
        }

        override function update(dt:Float) {
            _deltaTime = dt;
            if(_currentState!=null){
                var s = _currentState.update(this);
                s.render(this);
                if(s != _currentState) setState(s);
            }
        }

}
