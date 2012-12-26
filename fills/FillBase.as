package winx.fills 
{
	import winx.fills.core.IFill;
	
	/**
	 * ...
	 * @author nba00123
	 */
	public class FillBase implements IFill 
	{
		
		public function FillBase() 
		{
			
		}
		
		/* INTERFACE winx.frams.fills.core.IFill */
		protected function format(value:Object):*
		{
			var back:*=value;
			if (String(Number(value)) == value) {
				back= Number(value);
			}
			if (value == "true" || value == "false") {
				back = value == "true";
			}
			return back;
		}
		public function fill(obj:Object, vars:Object,type:String=null):void 
		{
			for (var nm:String in vars) {
				fillVar(obj, nm, vars[nm]);
			}
		}
		protected function fillVar(obj:Object, name:String, value:Object):void
		{
			if (!obj) return;
			try{
			//if (obj.hasOwnProperty(name)||obj) {
				obj[name] = format(value);
			//}
			}catch (e:Error) {
				//trace(e);
			}
		}
	}

}