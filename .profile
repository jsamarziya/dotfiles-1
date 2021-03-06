case $- in
  *i*)
    # Interactive session. Try switching to bash.
    if [ -z "$BASH" -o "$BASH" = '/bin/sh' ]; then 
      bash=$(command -v bash)
      if [ -x "$bash" ]; then
        export SHELL="$bash"
        exec "$bash" --login
      fi
    fi
esac
