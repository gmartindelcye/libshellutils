# libshellutils
Different shell functions to make better scripts

Commands
========


echoc
-----

**echoes a message in a color**

*Uses:*
      echoc "color" "message"

      Where color could be:
      black       dark_grey
      red         light_red
      green       light_green
      orange      yellow
      blue        light_blue
      purple      light_purple
      cyan        light_cyan
      light_grey  white

*Example:*

      echoc "purple" "Hello World!"



servicecheck
------------

**returns a color message depending if a service is active or not**

*Uses:*
      servicecheck <service>

*Example:*
      servicecheck postgresql


Library
=======

print_color
-----------

**echoc** uses this function so the parameters and results are the same.


check_service_status
--------------------

**servicecheck** uses this function so the parameters and results are the same.
