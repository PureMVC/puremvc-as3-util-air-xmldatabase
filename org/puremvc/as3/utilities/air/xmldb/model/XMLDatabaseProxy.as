/*
  PureMVC Utility for AS3 / AIR - XML Database 
  Copyright(c) 2007-08 Cliff Hall <clifford.hall@puremvc.org>
  Your reuse is governed by the Creative Commons Attribution 3.0 License
 */
package org.puremvc.as3.utilities.air.xmldb.model
{
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	
	import org.puremvc.as3.interfaces.*;
	import org.puremvc.as3.patterns.proxy.*;
	import org.puremvc.as3.utilities.air.xmldb.interfaces.IXMLDatabaseProxy;
	
	/**
	 * Abstract Proxy subclass for handling File I/O for 
	 * an AIR-based XML database file.
	 * <P>
	 * 
	 */
	public class XMLDatabaseProxy extends Proxy implements IProxy, IXMLDatabaseProxy 
	{

		/**
		 * Constructor. 
		 */
		public function XMLDatabaseProxy( proxyName:String=null, data:Object=null ) {
			super( proxyName, data );	
		}
		
		/**
		 * Save the in memory XML Database to disk.
		 */
		public function persist():void
		{
			write();
		}
		
		/**
		 * Initialize the XML database.
		 * 
		 * <P>Read the file if it exists, or create one from scratch</P>
		 * <P>This is called from the concrete subclass's constructor 
		 * or later if you want to lazily initialize. </P>
		 */
		public function initialize( dbName:String, location:File ):void
		{
			// Determine the database file location 	
			this.dbName = dbName;		
			dbFile = location.resolvePath( dbName );
			
			// Either read the existing database
			// or build new database and save it 
			if (dbFile.exists) 	{
				data = read(); 
			} else {
				data = build();
				write();
			}
			
			// Parse XML Database
			parse();
			
		}

		/**
		 * Read the XML Database
		 * 
		 * @return XML the in memory representation of the XML
		 */
		protected function read():XML
		{
			// Read the database file into an XML object and return it
			var dbStream:FileStream;
			dbStream = new FileStream();
			dbStream.open(dbFile,FileMode.READ);
			var dbXML:XML = XML(dbStream.readUTFBytes(dbStream.bytesAvailable));
			dbStream.close();
			return dbXML;
		}
	
		/**
		 * Write the XML Database to disk.
		 */
		protected function write():void
		{
			// Get the string representation of the XML database
			var dbOut:String = '<?xml version="1.0" encoding="utf-8"?>\n';
			dbOut += data.toString();
			dbOut = dbOut.replace(/\n/g, File.lineEnding);
			
			// Write and close the file
			var dbStream:FileStream = new FileStream();
			dbStream.open(dbFile,FileMode.WRITE);
			dbStream.writeUTFBytes(dbOut);
			dbStream.close();
		}

		/**
		 * Build a blank XML database. 
		 * 
		 * <P>
		 * Override in subclass to return a skeleton database.</P>
		 * 
		 * @return XML a blank XML database
		 */
		protected function build():XML
		{
			return new XML();
		}

		/**
		 * Parse the incoming XML database. 
		 * 
		 * <P>
		 * Override in subclass to parse the XML 
		 * database into separate Proxies if need 
		 * be.</P>
		 * 
		 * <P>
		 * Rather than clutter the concrete class with
		 * methods and properties for returning specific
		 * parts of the database, create separate proxies
		 * to tend specific areas of the XML database, 
		 * and give them references to pieces of the
		 * XML document.</P>
		 */
		protected function parse():void
		{
		}

		/**
		 * Cast the data object to its actual type.
		 * 
		 * <P>
		 * This is a useful idiom for proxies. The
		 * PureMVC Proxy class defines a data
		 * property of type Object. </P>
		 * 
		 * <P>
		 * Here, we cast the generic data property to 
		 * its actual type in a protected mode. This 
		 * retains encapsulation, while allowing the instance
		 * (and subclassed instance) access to a 
		 * strongly typed reference with a meaningful
		 * name.</P>
		 * 
		 * @return xml the data property cast to XML
		 */
		protected function get xml():XML 
		{
			return data as XML;
		}

		// the data file reference
		protected var dbFile:File;
		// The data file name
		protected var dbName:String;
		
	}
}