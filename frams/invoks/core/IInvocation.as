package winx.frams.invoks.core 
{
	
	/**
	 * ...
	 * @author nba00123
	 */
	public interface IInvocation 
	{
		function invoke(context:*,id:int=0):void;
		function addIntercepter(intercepter:IIntercepter):void;
		function addIntercepterAt(intercepter:IIntercepter,at:int=-1):void;
		function removeIntercepter(intercepter:*):void;
	}
	
}