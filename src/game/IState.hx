package game;
interface IState{
	function enter(game:LDGame):IState;
	function update(game:LDGame):IState;
	function exit(game:LDGame):Void;
}
