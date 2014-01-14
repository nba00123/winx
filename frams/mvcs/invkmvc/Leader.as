package winx.frams.mvcs.invkmvc 
{
	import winx.frams.invoks.Intercepter;
	import winx.utils.debug;
	/**
	 * ...
	 * @author nba00123
	 */
	public class Leader extends Worker
	{
		
		public function Leader(name:String="") 
		{
			super(name);
		}
		override public function intercepte(context:*, id:int):void 
		{
			//debug("领导前："+context)
			super.intercepte(context, id);
			//debug("领导后："+context)
		}
	}

}