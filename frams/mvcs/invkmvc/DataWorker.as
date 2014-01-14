package winx.frams.mvcs.invkmvc 
{
	import winx.utils.debug;
	/**
	 * ...
	 * @author nba00123
	 */
	public class DataWorker extends Worker 
	{
		
		public function DataWorker(name:String="") 
		{
			super(name);
		}
		override public function intercepte(context:*, id:int):void 
		{
			//debug("记录前:"+context, id);
			super.intercepte(context, id);
			//debug("记录后:"+context, id);
		}
	}

}