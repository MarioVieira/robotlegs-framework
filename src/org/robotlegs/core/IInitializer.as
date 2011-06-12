package org.robotlegs.core
{
	import org.swiftsuspenders.Injector;
	
	public interface IInitializer
	{
		function init(injector:IInjector):void;
	}
}