package org.robotlegs.adapters
{
	import flash.system.ApplicationDomain;
	
	import org.robotlegs.core.IInjector;
	import org.robotlegs.enums.ConfigEnums;
	import org.swiftsuspenders.injectionpoints.InjectorProvider;
	
	
	public class SwiftSuspendersInjectorProvider extends InjectorProvider implements IInjector
	{
		public function SwiftSuspendersInjectorProvider(xmlConfig:XML = null)
		{
			if (xmlConfig)
			{
				for each (var typeNode:XML in ConfigEnums.XML_CONFIG.children())
				{
					xmlConfig.appendChild(typeNode);
				}
			}
			
			super(xmlConfig);
		}
		
		/**
		 * @inheritDoc
		 */
		public function createChild(applicationDomain:ApplicationDomain = null):IInjector
		{
			var injector:SwiftSuspendersInjectorProvider = new SwiftSuspendersInjectorProvider();
			injector.setApplicationDomain(applicationDomain);
			injector.setParentInjector(this);
			return injector;
		}
		
		/**
		 * @inheritDoc
		 */
		public function get applicationDomain():ApplicationDomain
		{
			return getApplicationDomain();
		}
		
		/**
		 * @inheritDoc
		 */
		public function set applicationDomain(value:ApplicationDomain):void
		{
			setApplicationDomain(value);
		}
	}
}