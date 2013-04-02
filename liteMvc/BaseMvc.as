package winx.liteMvc 
{
	import flash.events.EventDispatcher;
	/**
	 * ...
	 * @author nba00123
	 */
	public class BaseMvc 
	{
		public var dict:EventDictionary;
		public function BaseMvc() 
		{
			
		}
		public function addListener(type:String,fun:Function):void
		{
			dict.add(type, fun);
		}
		public function dispatch(type:String,...arg):*
		{
			return dict.callFun(type, arg);
		}
		public function removeListener(type:String,fun:Function):void
		{
			dict.remove(type, fun);
		}
		
		public function init():void 
		{
			
		}
	}

}