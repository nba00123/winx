package winx.frams.mvcs.invkmvc 
{
	import winx.frams.invoks.core.IIntercepter;
	import winx.frams.invoks.core.IInvocation;
	import winx.frams.invoks.Intercepter;
	import winx.frams.invoks.Invocation;
	import winx.frams.invoks.SimpleIntercepter;
	import winx.frams.mvcs.core.IMvcx;
	
	/**
	 * ...
	 * @author nba00123
	 */
	public class Worker extends Invocation implements IIntercepter
	{
		private var _invocation:IInvocation;
		public var name:String;
		
		public function Worker(name:String="",intercepters:Vector.<IIntercepter>=null) 
		{
			super(intercepters);
			this.name = name;
			
		}
		
		
		public function addListener(context:*):* 
		{
			return this.invoke(context);
		}
		
		public function removeListener(context:*):* 
		{
			return this.invoke(context);
		}
		
		public function dispatch(context:*):* 
		{
			return this.invoke(context);
		}
		
		/* INTERFACE winx.frams.invoks.core.IIntercepter */
		
		public function get invocation():IInvocation 
		{
			return _invocation;
		}
		
		public function set invocation(value:IInvocation):void 
		{
			//if (invocation) invocation.removeIntercepter(this);
			_invocation = value;
			//if (invocation) invocation.addIntercepter(this);
		}
		
		public function intercepte(context:*, id:int):void 
		{
			invoke(context);
			invocation.invoke(context, id);
		}
		public function toMap(tab:String="",nt:String="|--"):String
		{
			var s:String = "";
			s += tab + this.name;
			for (var i:int = 0; i < intercepters.length;i++ ) {
				var wk:Worker = intercepters[i] as Worker;
				if (wk) {
					s += "\n" + wk.toMap(tab+nt);
				}else {
					s += "\n" + tab+nt+intercepters[i];
				}
			}
			return s;
		}
	}

}