package game;
interface IState{
	function enter(game:LDGame):IState;
	function update(game:LDGame):IState;
	function render(game:LDGame):Void;
	function exit(game:LDGame):Void;
}
