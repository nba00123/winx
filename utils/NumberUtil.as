package winx.utils 
{
	/**
	 * ...
	 * @author nba00123
	 */
	public class NumberUtil 
	{
		
		public function NumberUtil() 
		{
			//toTimeString(1)
		}
		
		public static function toTimeString(value:int):String
		{
			return toFillString(value, 2);
		}
		
		public static function toSecondString(value:int):String
		{
			return toFillString(value, 2);
		}
		public static function toFillString(value:int,cut:int):String
		{
			var s:String = value.toString();
			for (var i:int; i < cut; i++ ) {
				s = "0" + s;
			}
			s = s.substr(s.length-cut, cut);
			return s;
		}
	}

}