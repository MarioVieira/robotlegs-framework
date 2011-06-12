package org.robotlegs.mvcs
{
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.core.IInitializer;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.core.IMediatorMap;
	
	public class MediatorInit extends Mediator implements IInitializer
	{
		public function MediatorInit() 
		{
				
		}
		
		public function init(injector:IInjector):void
		{
			contextView = injector.getInstance(DisplayObjectContainer);
			mediatorMap = injector.getInstance(IMediatorMap);
		}
	}
}