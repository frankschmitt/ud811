# vim session with source files
tmux "new-session" -s "uda801" -d
tmux send-keys -t uda801 'cd /Users/frank/src/udacity-progressive-web-apps-ud811/1-12-skeleton' C-m 
tmux send-keys -t uda801 'vim public/*.js public/*.html README.md' C-m
# run HTTP server
tmux "split-window" -v -p 30
tmux send-keys -t uda801 'cd /Users/frank/src/udacity-progressive-web-apps-ud811/1-12-skeleton' C-m 
tmux send-keys -t uda801 'node server.js' C-m
tmux attach -t "uda801"

