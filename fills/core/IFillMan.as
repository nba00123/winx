package winx.fills.core 
{
	
	/**
	 * ...
	 * @author nba00123
	 */
	public interface IFillMan extends IFill
	{
		function addFill(fill:IFill, type:String = null):void;
		function getFill(type:String):IFill;
	}
	
}