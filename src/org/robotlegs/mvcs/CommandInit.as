package org.robotlegs.mvcs
{
	import flash.display.DisplayObjectContainer;
	import flash.events.IEventDispatcher;
	
	import org.robotlegs.base.MediatorMap;
	import org.robotlegs.core.ICommandMap;
	import org.robotlegs.core.IInitializer;
	import org.robotlegs.core.IInjector;
	
	public class CommandInit extends Command implements IInitializer
	{
		public function CommandInit() 
		{
			
		}
		
		public function init(injector:IInjector):void
		{
			contextView		= injector.getInstance(DisplayObjectContainer);
			commandMap 		= injector.getInstance(ICommandMap);
			eventDispatcher = injector.getInstance(IEventDispatcher);
			injector 		= injector.getInstance(IInjector);
			mediatorMap 	= injector.getInstance(MediatorMap);
		}
	}
}