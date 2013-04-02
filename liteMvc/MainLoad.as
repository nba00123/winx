package winx.liteMvc 
{
	/**
	 * ...
	 * @author nba00123
	 */
	public class MainLoad extends PartLoad
	{
		//private var dict:EventDictionary;
		public function MainLoad(dict:EventDictionary=null) 
		{
			this.dict = dict||new EventDictionary();
			
		}
		public function addLoad(load:PartLoad):void
		{
			load.dict = dict;
			load.man = this;
			load.init();
		}
	}

}