#!/bin/bash
 
# set profile 
#echo -ne "\033]1337;SetProfile=$@\a"
# ssh login
#/usr/bin/ssh "$@"
# set profile(default)
#echo -ne "\033]1337;SetProfile=Default\a"

# SSH接続先に、「lan」もしくは「172.16」のサブネットであれば、ターミナルの「lan」プロファイルを適用する
if [[ `echo $@ | egrep 'lan|172.16|pfsense|unraid|dsm'` ]] ; then
   echo -ne "\033]1337;SetProfile=lan\a"
   /usr/bin/ssh -F ~/.ssh/config $@

# SSH接続先に、「dmz」もしくは「192.168」という文字列が入ってたら、DMZ環境とみなしてターミナルの「dmz」プロファイルを適用する
elif [[ `echo $@ | egrep 'dmz|192.168'` ]] ; then
   echo -ne "\033]1337;SetProfile=dmz\a"
   echo $@
   /usr/bin/ssh -F ~/.ssh/config $@

# 上記に該当しない接続先は、otherプロファイルを適用する
else
   echo -ne "\033]1337;SetProfile=other\a"
   /usr/bin/ssh -F ~/.ssh/config $@
fi

echo -ne "\033]1337;SetProfile=Default\a"
