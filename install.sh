#!/bin/bash
PREFIX=/usr/local
KUBECTXDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASHCOMPLETIONDIR="$( pkg-config --variable=completionsdir bash-completion )"
ln -sf $KUBECTXDIR/kubectx $PREFIX/bin/kctx
ln -sf $KUBECTXDIR/kubens $PREFIX/bin/kns
ln -sf $KUBECTXDIR/completion/kubectx.bash $BASHCOMPLETIONDIR/kctx
ln -sf $KUBECTXDIR/completion/kubens.bash $BASHCOMPLETIONDIR/kns
