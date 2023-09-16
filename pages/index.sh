
htmx_page <<-EOF
  <h1>Badcop's Cool Free Sounds</h1>
EOF

for folder in static/sounds/*; do
  echo "<h2>$(basename $folder)</h2>"
  echo "<ul>"
  find $folder -type f | sort | awk 'BEGIN { FS = "/" } ; { print "<li>" $4 "<audio controls><source src=\""$0"\"></audio></li>" }'
  echo "</ul>"
done
