#!/usr/bin/env bash
#
# Set up links to newer versions of tools that i use a lot.
#
set -ex
rm -f $HOME/bin/awk
rm -f $HOME/bin/date
rm -f $HOME/bin/find
rm -f $HOME/bin/grep
rm -f $HOME/bin/make
rm -f $HOME/bin/readlink
rm -f $HOME/bin/sed
rm -f $HOME/bin/sort
rm -f $HOME/bin/tar
rm -f $HOME/bin/xargs
ln -s /opt/local/bin/gawk $HOME/bin/awk
ln -s /usr/local/bin/gdate $HOME/bin/date
ln -s /usr/local/bin/gfind $HOME/bin/find
ln -s /usr/local/bin/ggrep $HOME/bin/grep
ln -s /usr/local/bin/gmake $HOME/bin/make
ln -s /usr/local/bin/gsed $HOME/bin/sed
ln -s /usr/local/bin/gsort $HOME/bin/sort
ln -s /usr/local/bin/gtar $HOME/bin/tar
ln -s /usr/local/bin/gxargs $HOME/bin/xargs
