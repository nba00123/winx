package winx.frams.invoks 
{
	import winx.frams.invoks.core.IIntercepter;
	import winx.frams.invoks.core.IInvocation;
	/**
	 * ...
	 * @author nba00123
	 */
	public class Invocation implements IInvocation
	{
		protected var intercepters:Vector.<IIntercepter>;
		public function Invocation(intercepters:Vector.<IIntercepter>=null) 
		{
			this.intercepters = intercepters || new Vector.<IIntercepter>();
		}
		
		/* INTERFACE winx.frams.invoks.core.IInvocation */
		
		public function invoke(context:*,id:int=0):void
		{
			if (id >=intercepters.length) return;
			var intercepter:IIntercepter = this.intercepters[id];
			intercepter.intercepte(context,id+1);
		}
		
		public function addIntercepter(intercepter:IIntercepter):void 
		{
			addIntercepterAt(intercepter)
		}
		/**
		 * 移除
		 * @param	intercepter
		 */
		public function removeIntercepter(intercepter:*):void
		{
			for (var i:int = 0;i< intercepters.length;i++ ) {
				if (intercepter == intercepters[i]) {
					intercepters.splice(i, 1);
					break;
				}
			}
		}
		
		/* INTERFACE winx.frams.invoks.core.IInvocation */
		
		public function addIntercepterAt(intercepter:IIntercepter, at:int = -1):void 
		{
			intercepter.invocation = this;
			if (at == -1) {
				intercepters.push(intercepter)
			}else {
				intercepters.splice(at, 0, intercepter);
			}
			//trace(intercepters)
		}
	}

}