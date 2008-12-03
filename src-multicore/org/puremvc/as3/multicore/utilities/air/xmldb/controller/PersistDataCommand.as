/*
  PureMVC Utility for AS3 / AIR - XML Database 
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.multicore.utilities.air.xmldb.controller
{
	import org.puremvc.as3.multicore.interfaces.*;
	import org.puremvc.as3.multicore.patterns.command.*;
	
	import org.puremvc.as3.multicore.utilities.air.xmldb.interfaces.*;
	
	/**
	 * Persist an arbtrary XML Database 
	 */
	public class PersistDataCommand extends SimpleCommand
	{
		public static const NAME:String = 'XMLDatabasePersistDataCommand';
		
		override public function execute( note:INotification ) :void	{

			var proxyName:String = note.getBody() as String;
			
			// Get the IXMLDatabaseProxy implementor 
			var db:IProxy = facade.retrieveProxy( proxyName ) as IProxy;
			
			// Persist its XML Database
			IXMLDatabaseProxy(db).persist();
			
		}
	}
}