package org.robotlegs.mvcs
{
	import flash.display.DisplayObjectContainer;
	import flash.events.IEventDispatcher;
	
	import org.robotlegs.adapters.InjectorInit;
	import org.robotlegs.base.EventMap;
	import org.robotlegs.core.ICommandMap;
	import org.robotlegs.core.IEventMap;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.core.IMediatorMap;
	import org.robotlegs.core.IReflector;
	import org.robotlegs.core.IViewMap;
	
	public class ContextInit extends Context
	{
		public function ContextInit(contextView:DisplayObjectContainer = null, autoStartup:Boolean = true)
		{
			super(contextView, autoStartup);
		}
		
		override protected function mapInjections():void
		{
			//been playing around, not sure if will leave all the same mapping
			injector.mapValue(IReflector, reflector);
			injector.mapValue(IInjector, injector);
			injector.mapValue(DisplayObjectContainer, contextView);
			injector.mapValue(ICommandMap, commandMap);
			injector.mapValue(IMediatorMap, mediatorMap);
			injector.mapValue(IViewMap, viewMap);
		}
		
		override protected function createInjector():IInjector
		{
			super.createInjector()
			var injector:IInjector = new InjectorInit();
			injector.applicationDomain = getApplicationDomainFromContextView();
			return injector;	
		}
	}
}