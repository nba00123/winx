package winx.fills 
{
	/**
	 * ...
	 * @author nba00123
	 */
	public class XMLFill extends XMLListFill
	{
		
		public function XMLFill() 
		{
			
		}
		
		override public function fill(obj:Object, vars:Object,type:String=null):void 
		{
			super.fill(obj, (vars as XML).attributes(),type);
		}
		
	}

}