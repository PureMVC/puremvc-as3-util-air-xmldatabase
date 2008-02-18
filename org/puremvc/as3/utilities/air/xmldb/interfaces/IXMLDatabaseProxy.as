package org.puremvc.as3.utilities.air.xmldb.interfaces
{
	import flash.filesystem.File;
	
	public interface IXMLDatabaseProxy
	{
		function persist():void;
		function initialize( dbName:String, location:File ):void
		
	}
}