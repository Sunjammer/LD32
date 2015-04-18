package game;

import luxe.Text;
import luxe.Input;

class LDGame extends luxe.Game {
    override function ready() {


      }

      override function onkeyup( e:KeyEvent ) {
          if(e.keycode == Key.escape) {
              Luxe.shutdown();
          }

      }

      override function update(dt:Float) {

      }
}
