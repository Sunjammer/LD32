package game.states;
import luxe.*;
import luxe.Input;
import game.LDGame;

class MenuState implements IState{
	var block:Sprite;
	public function new(){}
	public function enter(game:LDGame):IState{
		trace("Entering menu state");
		block = new Sprite({
		            name: 'a sprite',
		            pos: Luxe.screen.mid,
		            color: new Color().rgb(0x00FF00),
		            size: new Vector(128, 128)
		        });
		return this;
	}
	public function update(game:LDGame):IState{
		block.rotation_z -= game.deltaTime*40;
		if(KeyManager.isKeyDown(Key.escape)){
			return new GameState();
		}else{
			return this;
		}
	}
	public function render(game:LDGame):Void{

	}
	public function exit(game:LDGame):Void{
		block.destroy();
		trace("Exiting menu state");
	}
}
