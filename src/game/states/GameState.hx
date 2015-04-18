package game.states;
import game.LDGame;
import luxe.*;
import luxe.Input;

class GameState implements IState{
	var block:Sprite;
	public function new(){}
	public function enter(game:LDGame):IState{
		trace("Entering game state");
		block = new Sprite({
		            name: 'a sprite',
		            pos: Luxe.screen.mid,
		            color: new Color().rgb(0xFF0000),
		            size: new Vector(128, 128)
		        });
		return this;
	}
	public function update(game:LDGame):IState{
		block.rotation_z += game.deltaTime*40;
		if(KeyManager.isKeyDown(Key.escape)){
			return new MenuState();
		}else{
			return this;
		}
	}

	public function render(game:LDGame):Void{

	}
	public function exit(game:LDGame):Void{
		block.destroy();
		trace("Exiting game state");
	}
}
