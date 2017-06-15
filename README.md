# About

The **muttley.precision_counter** module gives access to high precision counters
on supported platforns.

Currently the only platform the module provides a high precision counter for is
Windows. On other platforms a standard Millisecs resolution counter cast to a
double is returned to ensure code compatibility between platforms.

# Dependencies

The **muttley.precision_counter** module doesn't rely on any 3rd party modules.

The Unit Tests rely on Bruce Henderson's **bah.maxunit** module available from
his **maxmods/bah.mod** [GitHub repository][5].

In order to successfully build and run the precision_counter module tests you
will need to install this module.

# Installation

To install this module, copy the **precision_counter.mod** directory into a
folder called **muttley.mod** in your **BlitzMax\mod** directory.

For example, on Windows:

	xcopy precision_counter.mod C:\BlitzMax\mod\muttley.mod\. /E /I

On Linux:

	mkdir /opt/BlitzMax/mod/muttley.mod
	cp -r precision_counter.mod /opt/BlitzMax/mod/muttley.mod/.

Then build the module as follows (assuming `bmk` is in your path):

	bmk makemods -a muttley.precision_counter

# Unit Tests

Unit Tests for the module are included in the **precision_counter.mod\UnitTests**
folder, and these can be run as follows:

	bmk makeapp -a -r -t console -x precision_counter.mod\UnitTests\Main.bmx

# Examples

The **precision_counter.mod\Example** directory contains an example application
which show how the precision_counter module is used.

# Sublime Project

For [Sublime Text][1] users there is a project file which can be used if you
wish to modify this module in any way.  The project file includes build systems
for building the module, and building and running the Unit Tests.  These build
systems rely on the [Gradle][2] build automation system.

# Acknowledgements

Many thanks to Brucey for his MaxUnit module.

# License

Copyright (c) 2007-2017 Paul Maskelyne ([muttley@muttleyville.org][3]).

All rights reserved. Use of this code is allowed under the
Artistic License 2.0 terms, as specified in the LICENSE file
distributed with this code, or available from
[http://www.opensource.org/licenses/artistic-license-2.0.php][4]

[1]: http://www.sublimetext.com/
[2]: http://www.gradle.org/
[3]: mailto:muttley@muttleyville.org
[4]: http://www.opensource.org/licenses/artistic-license-2.0.php
[5]: https://github.com/maxmods/bah.mod
