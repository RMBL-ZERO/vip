#!/bin/bash
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo MAU DIBONGKAR YA BANG ? IZIN DULU KE @tau_samawa $0; exit 1
fi; exit $res
BZh91AY&SY�8  �߀ ]��>���@�( �CF�F@4 h`��I �  4 �CF�F@4 h`U5!4z$�e26�j4Ƨ�J���Z<n������Q���U���	�hIJD�"R��SA�dd;��ay�B�e�萑p�.�%|��I=������ņ�m��.^ts�[�Nts���7]�#��Go�⎣��y_%dp5��U+E����x�1�J_���+6y$�I$�L���V��l�F��ȭ`��.�6AYQ��FzV&4mR�*¬+�P��+�R fk�f�}�~#^�;uZr8Q�~���l�y���:�D�$"=>�JƣU���i�$����./A�p�/*R�]�J�Z��j�]�D�9hJ�y-jZKZ���E��0���Q��ܑN$}E 