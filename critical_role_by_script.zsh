function critical_role_by_script() {
  pushd $CRITICAL_ROLE_PATH > /dev/null 2>&1
  line_info=$(ag --nobreak --noheading . | fzf -m --exact -d':' --preview 'ln={2}; bat {1} -H $ln -r $[$[$ln - 3] < 0 ? 0 : $[$ln - 3]]:')
  if [[ $line_info != '' ]]; then
    file=$(echo $line_info | cut -d':' -f1)
    episode=$(echo $file | cut -d'_' -f1 | cut -d'E' -f2 | sed 's/^0//')
    line=$(echo $line_info | cut -d':' -f2)
    timestamp=$(tail $file -n +$[$line - 2] | head -3 | grep '\-\->' | cut -d',' -f1 | awk -F: '{ print ($1 * 3600) + ($2 * 60) + $3 }')
    link=$(search_youtube "Critical role rpg episode $episode")
    print "$link&t=$timestamp"
  fi
  popd > /dev/null 2>&1
}
