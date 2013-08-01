package winx.utils 
{
	import flash.display.Stage;
	import flash.events.KeyboardEvent;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author nba00123
	 */
	public class KeyManager 
	{
		private var downKeys:Dictionary;
		private var stage:Stage;
		
		public function KeyManager(stage:Stage) 
		{
			this.stage = stage;
			init();
		}
		
		private function init():void 
		{
			downKeys = new Dictionary();
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownHd);
			stage.addEventListener(KeyboardEvent.KEY_UP, keyUpHd);
		}
		
		private function keyUpHd(e:KeyboardEvent):void 
		{
			downKeys[e.keyCode] = false;
		}
		
		private function keyDownHd(e:KeyboardEvent):void 
		{
			downKeys[e.keyCode] = true;
		}

		/**
		 * 返回是否这些键【都或者部分】被按下
		 * @param	keys
		 * @param	all 全部，部分
		 * @return
		 */
		public function hasKeysDown(keys:Array,all:Boolean=true):Boolean
		{
			var bl:Boolean = false;
			for (var i:int; i < keys.length; i++ ) {
				bl = hasKeyDown(keys[i]);
				if (all==!bl)break;
			}
			return bl;
		}
		/**
		 * 返回是否按下某键
		 * @param	key
		 * @return
		 */
		public function hasKeyDown(key:int):Boolean
		{
			return downKeys[key];
		}
	}

}