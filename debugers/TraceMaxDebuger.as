package winx.debugers 
{
	import winx.debugers.core.IDebuger;
	/**
	 * ...
	 * @author nba00123
	 */
	public class TraceMaxDebuger implements IDebuger
	{
		
		public function TraceMaxDebuger() 
		{
			
		}
		
		/* INTERFACE winx.debugers.core.IDebuger */
		
		public function debug(...arg):void 
		{
			trace("----------------------")
			trace.apply(null, arg);
			var e:Error = new Error("调试堆栈:");
			trace(e.getStackTrace());
			trace("----------------------")
			
		}
		
	}

}