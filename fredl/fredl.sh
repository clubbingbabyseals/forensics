date > fredl.txt
echo "------------------------------------------------"  >> fredl.txt
echo "uname -a"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
uname -a >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "/etc/passwd"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
cat /etc/passwd  >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "/etc/group"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
cat /etc/group  >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "setuid"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
find / -user root -perm -4000 -exec ls -ldb {} \; >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "authorized_keys"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
find / -name authorized_keys -exec ls -ldb {} \; -exec cat {} \; >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "ps -aux"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
ps -aux >> fredl.txt 
echo "------------------------------------------------"  >> fredl.txt
echo "netstat -anp tcp and udp"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
netstat -anp  | grep tcp >> fredl.txt
netstat -anp  | grep udp >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "lsmod"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
lsmod >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "hosts"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
cat /etc/hosts >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "resolv.conf"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
cat /etc/resolv.conf >> fredl.txt

echo "------------------------------------------------"  >> fredl.txt
echo "files in last two days"  >> fredl.txt
echo "------------------------------------------------"  >> fredl.txt
find / ! -path "*/proc/*" ! -path "*/sys/*"   -mtime -2 -exec ls -ldb {} \;  >> fredl.txt
