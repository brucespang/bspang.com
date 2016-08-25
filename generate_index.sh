#! /bin/bash
set -e

cat << EOF > index.html
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
 <head>
  <title>Index of /</title>
 </head>
 <body>
<h1>Index of /</h1>
  <table>
   <tr><th valign="top"><img src="blank.gif" alt="[ICO]"></th><th>Name</th></tr>
   <tr><th colspan="5"><hr></th></tr>
EOF

find . -type f | grep -v .git | grep -vE "(README.md|.DS_Store)" | while read file; do
    cat << EOF >> index.html
<tr><td valign="top"><img src="/image2.gif" alt="[IMG]"></td><td><a href="$file">`echo $file | sed 's/.\///'`</a></td></tr>
EOF
done

cat << EOF >> index.html
</table>
</body>
</html>
EOF
