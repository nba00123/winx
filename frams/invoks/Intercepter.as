package winx.frams.invoks 
{
	import winx.frams.invoks.core.IIntercepter;
	import winx.frams.invoks.core.IInvocation;
	/**
	 * ...
	 * @author nba00123
	 */
	public class Intercepter implements IIntercepter
	{
		private var _invocation:IInvocation;
		
		public function Intercepter() 
		{
			
		}
		
		/* INTERFACE winx.frams.invoks.core.IIntercepter */
		
		public function get invocation():IInvocation 
		{
			return _invocation;
		}
		
		public function set invocation(value:IInvocation):void 
		{
			_invocation = value;
		}
		
		public function intercepte(context:*, id:int):void 
		{
			invocation.invoke(context, id);
		}
		
	}

}