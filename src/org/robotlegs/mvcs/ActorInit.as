package org.robotlegs.mvcs
{
	import flash.events.IEventDispatcher;
	
	import org.robotlegs.core.IInitializer;
	import org.robotlegs.core.IInjector;
	
	public class ActorInit extends Actor implements IInitializer
	{
		public function ActorInit() 
		{
			
		}
		
		public function init(injector:IInjector):void
		{
			eventDispatcher = injector.getInstance(IEventDispatcher);
		}
	}
}