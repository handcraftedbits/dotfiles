# Start ssh-agent if it hasn't been started already.

set agent_running (pgrep ssh-agent)

if test -z $agent_running
     eval (command ssh-agent -c | sed -E 's/^setenv ([^ ]+) (.+);$/set -e \1; set -e \1; set -Ux \1 \2;/')
end
