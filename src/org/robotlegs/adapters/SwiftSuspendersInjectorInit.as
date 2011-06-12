package org.robotlegs.adapters
{
	import flash.system.ApplicationDomain;
	
	import org.robotlegs.core.IInitializer;
	import org.robotlegs.core.IInjector;
	import org.robotlegs.enums.ConfigEnums;
	import org.swiftsuspenders.Injector;
	
	
	public class SwiftSuspendersInjectorInit extends Injector implements IInjector
	{
		public function SwiftSuspendersInjectorInit(xmlConfig:XML = null)
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
		override public function instantiate(clazz:Class):*
		{
			var instance:* = super.instantiate(clazz);
			if(instance is IInitializer) IInitializer(instance).init(this);
			return instance;
		}
		
		/**
		 * @inheritDoc
		 */
		public function createChild(applicationDomain:ApplicationDomain = null):IInjector
		{
			var injector:SwiftSuspendersInjectorInit = new SwiftSuspendersInjectorInit();
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