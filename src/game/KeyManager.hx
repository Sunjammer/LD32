package game;
class KeyManager{
	static var _keyDict = new Map<Int,Bool>();
	public static function setKeyDown(code){
		_keyDict[code] = true;
	}
	public static function setKeyUp(code){
		_keyDict[code] = false;
	}
	public static function isKeyDown(code){
		if(!_keyDict.exists(code)) return false;
		return _keyDict[code];
	}
	public static function reset(){
		_keyDict = new Map<Int,Bool>();
	}
}
