package winx.debugers 
{
	/**
	 * ...
	 * @author nba00123
	 */
	public class StaticMan 
	{
		
		private static var _debugerMan:DebugerMan;
		
		static public function get debugerMan():DebugerMan 
		{
			if (!_debugerMan)_debugerMan = new DebugerMan();
			return _debugerMan;
		}
		static public function debug(...arg):void
		{
			debugerMan.debug.apply(null, arg);
		}
		
	}

}