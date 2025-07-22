#!/bin/bash

#mkdir -p ~/link_test
cd ~/link_test

sleep 5

echo "RHCSA JE ZIVOT" > cinjenica.txt

sleep 2

echo "Sadrzaj cinjenica.txt je:"
cat cinjenica.txt

sleep 5

# HARD LINK
ln cinjenica.txt hardlink_cinjenica.txt

sleep 2

echo -e "\nNapravljen HARD LINK: hardlink_cinjenica.txt"

sleep 5

# SOFT LINK
ln -s cinjenica.txt symlink.txt

sleep 2

echo "Napravljen soft(symbolic) link: symlink.txt"

sleep 5

# Prikaz sadrzaja oba linka
echo -e "\nsadrzaj hard linka:"

cat hardlink_cinjenica.txt

sleep 2

echo -e "\nsadrzaj soft linka:"
cat symlink.txt

sleep 5

# Birsanje originala
rm cinjenica.txt

echo -e "\nObirsan je fajl cinjenica.txt"

sleep 2

echo -e "\nSadrzaj preko cinjenica.txt i dalje postoji u hardlink_cinjenica.txt:"

sleep 5

cat hardlink_cinjenica.txt

sleep 5

echo -e "\nSadrzaj preko symlink.txt ne radi vise:"

sleep 5

cat symlink.txt 2>/dev/null || echo "symlink.txt je pokvaren (dangling link)"

sleep 5

rm -rf hardlink_cinjenica.txt symlink.txt
