package winx.frams.mvcs.core 
{
	
	/**
	 * ...
	 * @author nba00123
	 */
	public interface IMvcx 
	{
		/**
		 * 添加
		 * @param	...arg
		 * @return
		 */
		function addListener(...arg):*;
		/**
		 * 移除
		 * @param	...arg
		 * @return
		 */
		function removeListener(...arg):*;
		/**
		 * 触发
		 * @param	...arg
		 * @return
		 */
		function dispatch(...arg):*;
	}
	
}