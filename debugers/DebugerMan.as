package winx.debugers 
{
	import winx.debugers.core.IDebuger;
	/**
	 * ...
	 * @author nba00123
	 */
	public class DebugerMan implements IDebuger 
	{
		private var _enabled:Boolean=false;
		private var debugers:Vector.<IDebuger> = new Vector.<IDebuger>();
		public function DebugerMan() 
		{
			
		}
		public function addDebuger(debuger:IDebuger):void
		{
			debugers.push(debuger);
			if(enabled)debuger.debug("added debuger :" + debuger+" enabled:"+enabled);
			//trace("added debuger :" + debuger);
		}
		
		/* INTERFACE winx.debugers.core.IDebuger */
		
		public function debug(...arg):void 
		{
			if (!enabled) return;
			var debuger:IDebuger;
			for (var i:int = 0; i < debugers.length; i++ ) {
				debuger = debugers[i];
				debuger.debug.apply(null, arg);
			}
		}
		
		public function get enabled():Boolean 
		{
			return _enabled;
		}
		
		public function set enabled(value:Boolean):void 
		{
			_enabled = value;
		}
	}

}