package winx.fills 
{
	import winx.fills.core.IFill;
	import winx.fills.core.IFillMan;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author nba00123
	 */
	public class FillMan implements IFillMan
	{
		private var ifills:Dictionary;
		public function FillMan() 
		{
			ifills = new Dictionary();
		}
		
		/* INTERFACE fills.core.IFillMan */
		
		public function addFill(fill:IFill,type:String=null):void 
		{
			ifills[type]=fill;
		}
		
		public function fill(o:Object, vars:Object,type:String=null):void 
		{
			var ifill:IFill = getFill(type);
			if (!ifill) {
				trace("未找到指定的填充方法"+type);
				return;
			}
			ifill.fill(o, vars,type);
		}
		public function toString():String
		{
			var s:String="fills:\n";
			for (var key:String in ifills ) 
			{
				s += key + ":" + ifills[key]+"\n";
			}
			return s;
		}
		
		/* INTERFACE winx.fills.core.IFillMan */
		
		public function getFill(type:String):IFill 
		{
			var ifill:IFill = ifills[type] as IFill;
			return ifill;
		}
		
	}

}