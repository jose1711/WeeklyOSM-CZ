#!/bin/bash

#01/06/2016-01/07/2016 -> 06.01. - 07.01.2016
sedfile 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/2016-\([0-9][0-9]\)\/\([0-9][0-9]\)\/2016/\2.\1. - \4.\3.2016/' $*

#01/06/2016 -> 06.01.2016
sedfile 's/\([0-9][0-9]\)\/\([0-9][0-9]\)\/2016/\2.\1.2016/' $*

#2016-05-01 -> 01.05.2016
sedfile 's/2016-\([0-9][0-9]\)-\([0-9][0-9]\)/\1.\2.2016/' $*
