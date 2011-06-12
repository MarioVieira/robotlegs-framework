package org.robotlegs.enums
{
	
	public class ConfigEnums
	{
		public static const XML_CONFIG:XML =
			<types>
				<type name='org.robotlegs.mvcs::Actor'>
					<field name='eventDispatcher'/>
				</type>
				<type name='org.robotlegs.mvcs::Command'>
					<field name='contextView'/>
					<field name='mediatorMap'/>
					<field name='eventDispatcher'/>
					<field name='injector'/>
					<field name='commandMap'/>
				</type>
				<type name='org.robotlegs.mvcs::Mediator'>
					<field name='contextView'/>
					<field name='mediatorMap'/>
					<field name='eventDispatcher'/>
				</type>
			</types>;
	}
}