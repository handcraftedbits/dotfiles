# Set environment.

set -gx GOPATH /opt/devel/projects/go
set -gx GOROOT /opt/devel/go

set -gx PATH /opt/devel/go/bin $GOPATH/bin /opt/devel/maven/bin $PATH

# Start ssh-agent if it hasn't been started already.

if test -z (command pgrep ssh-agent)
     eval (command ssh-agent -c | sed -E 's/^setenv (.+);$/set \1; set -Ux \1;/')
end
