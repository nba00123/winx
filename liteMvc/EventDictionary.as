package winx.liteMvc 
{
	import flash.utils.Dictionary;
	
	/**
	 * ...
	 * @author nba00123
	 */
	public class EventDictionary 
	{
		private var dict:Dictionary = new Dictionary();
		public function EventDictionary() 
		{
			
		}
		public function toMap():String
		{
			var s:String = "";
			for (var type:String in dict) {
				s += "type:"+type+" funs:" + dict[type] + "\n";
			}
			return s;
		}
		public function add(type:String,fun:Function):void
		{
			if (!dict[type]) dict[type] = [];
			var funs:Array = dict[type];
			funs.push(fun);
		}
		public function remove(type:String, fun:Function):void
		{
			if (!dict[type]) return;
			var funs:Array = dict[type];
			//不考虑重复函数情况
			for (var i:int=0; i < funs.length; i++ ) {
				if (fun == funs[i]) {
					funs.splice(i, 1);
					break;
				}
			}
		}
		public function callFun(type:String, arg:Array = null):*
		{
			var fun:Function;
			var funs:Array = dict[type];
			if (!funs) {
				trace("没有注册的类型" + type);
				return null;
			}
			var tmp:*;
			for (var i:int=0; i < funs.length; i++ ) {
				fun = funs[i] as Function;
				tmp=fun.apply(null, arg);
			}
			return tmp
		}
		public function getFuns(type:String):Array
		{
			return dict[type];
		}
	}

}