package org.robotlegs.mvcs
{
	import org.robotlegs.adapters.SwiftSuspendersInjector;
	import org.robotlegs.adapters.SwiftSuspendersInjectorProvider;
	import org.robotlegs.core.IInjector;
	
	public class ContextProvider extends Context
	{
		override protected function createInjector():IInjector
		{
			var injector:IInjector = new SwiftSuspendersInjectorProvider();
			injector.applicationDomain = getApplicationDomainFromContextView();
			return injector;	
		}
	}
}