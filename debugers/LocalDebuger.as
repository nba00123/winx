package winx.debugers 
{
	import flash.events.AsyncErrorEvent;
	import flash.events.Event;
	import flash.events.SecurityErrorEvent;
	import flash.events.StatusEvent;
	import flash.net.LocalConnection;
	import winx.debugers.core.IDebuger;
	
	/**
	 * ...
	 * @author nba00123
	 */
	public class LocalDebuger implements IDebuger 
	{
		private var conn:LocalConnection;
		public var serverName:String;
		public function LocalDebuger(serverName:String="_winxDebug") 
		{
			this.serverName = serverName;
			conn = new LocalConnection();
			conn.addEventListener(AsyncErrorEvent.ASYNC_ERROR, errHd);
			conn.addEventListener(StatusEvent.STATUS, statusEventHd);
			conn.allowDomain( "*" );
			connect();
			
			
		}
		
		private function statusEventHd(e:StatusEvent):void 
		{
			trace(e)
		}
		
		private function errHd(e:AsyncErrorEvent):void 
		{
			trace(e);
		}
		
		private function connect():void 
		{
			//conn.connect(serverName);
		}
		
		/* INTERFACE winx.debugers.core.IDebuger */
		
		public function debug(...arg):void 
		{
			conn.send(serverName, "debug", arg);
		}
		
	}

}