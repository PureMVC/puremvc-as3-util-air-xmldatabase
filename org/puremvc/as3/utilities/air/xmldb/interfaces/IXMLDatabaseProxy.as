/*
  PureMVC Utility for AS3 / AIR - XML Database 
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.utilities.air.xmldb.interfaces
{
	import flash.filesystem.File;
	
	public interface IXMLDatabaseProxy
	{
		function persist():void;
		function initialize( dbName:String, location:File ):void
		
	}
}