for file in "$@"/*; do
  if [ -f "$file" ]; then
    touch -m "$file"
  fi
done

notify-send "Refreshing thumbnails for \"$@\"..."
