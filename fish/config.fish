# Start ssh-agent if it hasn't been started already.

set agent_running (pgrep ssh-agent)

if test -z $agent_running
     set -e SSH_AGENT_PID
     set -e SSH_AUTH_SOCK

     eval (command ssh-agent -c | sed -E 's/^setenv (.+);$/set \1; set -Ux \1;/')
end
