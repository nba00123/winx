package winx.frams.invoks.core 
{
	
	/**
	 * ...
	 * @author nba00123
	 */
	public interface IIntercepter 
	{
		function get invocation():IInvocation;
		function set invocation(value:IInvocation):void;
		function intercepte(context:*,id:int):void;
	}
	
}