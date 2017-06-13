unzip "$1" "meta.json" -d ./tmp 
sed -i -E "
s/\(\"appVersion\"\):\"[^\"]*\"\([,|}| ]\)/\1:\"43.1\"\2/g;
s/\(\"commit\"\):\"[^\"]*\"\([,|}| ]\)/\1:\"335a30073fcb2dc64a0abd6148ae147d694c887d\"\2/g;
s/\(\"build\"\):[^,|^}]*\([,|}]\)/\1:39012\2/g;
s/\(\"version\"\):[^,|^}]*\([,|}]\)/\1:88\2/g;
s/\"NONAPPSTORE\.[^\"]*\"/\"NONAPPSTORE.39012\",/g;
" ./tmp/meta.json 
zip -j --update "$1" "./tmp/meta.json"
rm -rf ./tmp
echo 'success! you can open it with 43.1'