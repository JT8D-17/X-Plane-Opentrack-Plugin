# X-Plane-Opentrack-Plugin

This repository contains only the X-Plane plugin that is compiled alongside Opentrack on Linux systems.   
It offers a way to build only the plugin without having to build Opentrack as well.

&nbsp;

## Changes from Opentrack's original plugin

Based on commit b8e7865a017363e9d3876539936a6f73310a99d9 (2019/12/24) from Opentrack's repository.

- Plugin output is not on after plugin start
- Added On/Off commands for better plugin control (see below)
- Implemented a plugin-specific, writable dataref (see below)
- Robustness improvements (e.g. command phase detection)
- Beautification for plugin strings and commands
- Added some optional debug output strings for X-Plane's dev console and Log.txt (debug_strings in line 64; set to "1" and recompile)
- Makefile for 64 bit Linux, compiling against the version 3.0 APIs

&nbsp;

## Installation

Move _opentrack.xpl_ from the _"build"_ folder into _"X-Plane 11/Resources/plugins"_

&nbsp;

## Utilization

The plugin is not permanently active anymore and can be controlled from X-Plane with these methods.

&nbsp;
#### Commands

These can also be set from X-Plane's keyboard assignment menu.

>Opentrack/Toggle - Toggles X-Plane 6 DOF head movement with Opentrack input.  
Opentrack/On - Enables X-Plane 6 DOF head movement with Opentrack input.  
Opentrack/Off - Disables X-Plane 6 DOF head movement with Opentrack input.  
Opentrack/Toggle_Translation - Toggles X-Plane 3 DOF translation head movement with Opentrack input

&nbsp;
#### Datarefs

For checking the plugins's status, there is the following dataref.
  
>Opentrack/Tracking_Disabled - Writable
    
&nbsp;

## Compiling

To ease compilation and because licensing allows it, the repository contains all dependencies to easily compile the plugin.  
The standard make commands are configured to do the following:

    make clean - Will clean out the "build" folder
    make - Will compile a plugin and put it into the "build" folder
    make install - Requires adapting the path in XPLANEPLUGINS= in the Makefile and will copy the plugin into your X-Plane/Resources/plugin folder
    
&nbsp;

## Known issues

- No MacOS build ; contribution and makefile welcome
- Integration with other X-Plane camera plugins may not work as desired 

&nbsp;

## License

See also the header of _plugin.c_.

_Copyright (c) 2013, Stanislaw Halik <sthalik@misaki.pl>   
 Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted, provided that the above copyright notice and this permission notice appear in all copies._
