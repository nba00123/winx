package winx.utils 
{
	import flash.display.InteractiveObject;
	import flash.ui.ContextMenu;
	import flash.ui.ContextMenuItem;
	/**
	 * ...
	 * @author nba00123
	 */
	public function addVersion(target:InteractiveObject,ver:String="0.1.0",info:String=""):void 
		{
			
			var menu:ContextMenu = new ContextMenu();
			var item:ContextMenuItem = new ContextMenuItem('ver:'+ver);
			menu.customItems.push(item);
			target.contextMenu = menu;
			
			debug('................'+info+'：' + ver);
		}

}