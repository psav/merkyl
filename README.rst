merkyl
======

Introduction
------------

Merkyl is a log file tailer with a bottle web interface. Its intended usage is during unit testing of
local or remote systems, where the user wishes to retain context relevant logs. When running lots of tests,
it is easy for logs to get huge and trying to sift through them to find the data that is relevant to the
portion of time a specific test was running for is tedious, even with time stamping. Merkyl was created
to allow you to start a tail of a log file, grab it, and then reset it, effectively clearing the memory
of what the file did contain, and replacing it with only new, relevant data.

Merkyl features both an HTTP API and a small web GUI to facilitate ease of use outside of testing frameworks.

Warnings
--------

Merkyl is Beta software and is in no way guaranteed to be secure. Poor usage may leave sensitive files open
to the network. It is intended for automated testing purposes only. YOU HAVE BEEN WARNED.

Merkyl is not intended to be used for massively large files and runs using the simple single threaded bottle
framework, again, YOU HAVE BEEN WARNED.

Usage
-----

Merkyl is usually pip installed and is started up by running the following:

``merkyl 8192 allowed.files``

* ``8192`` is the port that merkyl should listen on, currently there is no binding to specific IPs and so
runs on all interfaces.
* ``allowed.files`` is a text file containing paths that merkyl will ``.startswith()`` match against when a
new path is requested to be tailed.

You can then navigate to the gui by heading to ``http://127.0.0.1:8192/gui/`` and can use the form to add new
file names to tail. This file can then be accessed via the GUI, or via ``http://127.0.0.1:8192/get/file.name``
note that to get the file you do not use the path, just the file name. This is true with all files, meaning
you cannot tail two files of the same name currently.
