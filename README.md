## [PureMVC](http://puremvc.github.com/) [ActionScript 3](https://github.com/PureMVC/puremvc-as3-standard-framework/wiki) Utility: XML Database (AIR)
This utility provides the ability for PureMVC-based AIR applications to easily create and persist and work with XML databases.

Standard and MultiCore versions are included.

* [Discussion](http://forums.puremvc.org/index.php?topic=261)
* [API Docs](http://darkstar.puremvc.org/content_header.html?url=http://puremvc.org/pages/docs/AS3/Utility_AS3_AIR_XMLDatabase/asdoc/&desc=PureMVC%20Standard%20Docs%20AS3%20Utility:%20XML%20Database)

## Status
Production - [Version 1.2](https://github.com/PureMVC/puremvc-as3-util-air-xmldatabase/blob/master/VERSION)

## Demos Using This Utility
* [CodePeek](https://github.com/PureMVC/puremvc-as3-demo-air-codepeek/wiki)

## Utilities Using This Utility
* [Desktop Citizen](https://github.com/PureMVC/puremvc-as3-util-air-desktopcitizen/wiki)

## Platforms / Technologies
* [ActionScript 3](http://en.wikipedia.org/wiki/ActionScript)
* [Flash](http://en.wikipedia.org/wiki/Adobe_flash)
* [Flex](http://en.wikipedia.org/wiki/Adobe_Flex)
* [AIR](http://en.wikipedia.org/wiki/Adobe_AIR)

## Changes in 1.2
* Added MultiCore support. 
* No Standard version functionality changes except renaming source tree, therefore, there is no need to migrate Standard version apps to 1.2 unless you're also migrating to MultiCore.

## Changes in 1.1
* Moved source code into src folder. No functionality changed.

## Features in 1.0
* Abstract class for representing an XML database
  * Reads existing XML file or creates from a skeleton and persists 
  * Handles File I/O automatically
  * Provides a way to parse the XML tree and delegate nodes to different proxies
* Command for persisting arbitrary XML databases
* Application can have as many XML databases as needed

## License
* PureMVC Utility for AS3 / AIR - XML Database - Copyright © 2007-08 Cliff Hall
* PureMVC - Copyright © 2007-2012 Futurescale, Inc.
* All rights reserved.

* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
  * Neither the name of Futurescale, Inc., PureMVC.org, nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.