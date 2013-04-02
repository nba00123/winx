package winx.debugers 
{
	import winx.debugers.core.IDebuger;
	/**
	 * ...
	 * @author nba00123
	 */
	public class TraceDebuger implements IDebuger
	{
		
		public function TraceDebuger() 
		{
			
		}
		
		/* INTERFACE winx.debugers.core.IDebuger */
		
		public function debug(...arg):void 
		{
			trace.apply(null, arg);
		}
		
	}

}