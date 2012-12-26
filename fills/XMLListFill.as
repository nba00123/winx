package winx.fills 
{
	/**
	 * ...
	 * @author nba00123
	 */
	public class XMLListFill extends FillBase 
	{
		
		public function XMLListFill() 
		{
			
		}
		override public function fill(obj:Object, vars:Object,type:String=null):void 
		{
			//super.fill(obj, vars);
			fillXml(obj, (vars as XMLList),type);
		}
		private function fillXml(obj:Object, vars:XMLList,type:String=null):void
		{
			var len:int = vars.length();
			
			if (len == 0) return;
			for (var i:int = 0; i < len;i++ ) {
				var nm:String = vars[i].name();
				//if (nm == "target") continue;
				fillVar(obj,nm,vars[i]);
			}
		}
	}

}