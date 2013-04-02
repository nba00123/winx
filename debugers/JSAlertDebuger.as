package winx.debugers 
{
	import flash.external.ExternalInterface;
	import winx.debugers.core.IDebuger;
	
	/**
	 * ...
	 * @author nba00123
	 */
	public class JSAlertDebuger implements IDebuger 
	{
		
		public function JSAlertDebuger() 
		{
			
		}
		
		/* INTERFACE winx.debugers.core.IDebuger */
		
		public function debug(...arg):void 
		{
			if (!ExternalInterface.available) return;
			var rest:Array = ["alert"];
			rest = rest.concat.apply(null, arg);
			ExternalInterface.call.apply(null,rest);
			//trace(rest);
		}
		
	}

}