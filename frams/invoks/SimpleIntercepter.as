package winx.frams.invoks 
{
	import winx.utils.debug;
	/**
	 * ...
	 * @author nba00123
	 */
	public class SimpleIntercepter extends Intercepter 
	{
		private var after:Function;
		private var before:Function;
		
		public function SimpleIntercepter(before:Function=null,after:Function=null) 
		{
			this.before = before;
			this.after = after;
			
		}
		override public function intercepte(context:*, id:int):void 
		{
			if (before!=null) before.call(null, context, id);
			super.intercepte(context, id);
			if (after!=null) after.call(null, context, id);
		}
	}

}