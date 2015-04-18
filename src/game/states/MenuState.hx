package game.states;
import game.LDGame;

class MenuState implements IState{
	public function new(){

	}
	public function enter(game:LDGame):IState{
		trace("Entering menu state");
		return this;
	}
	public function update(game:LDGame):IState{
		return this;
	}
	public function exit(game:LDGame):Void{
		trace("Exiting menu state");
	}
}
