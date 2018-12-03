# dotfiles

To set up dotfiles, run:

```
git clone --bare git@github.com:jmulcahy/dotfiles.git $HOME/.cfg
. $HOME/.zshrc
config checkout
config config --local status.showUntrackedFiles no
config config user.email <number+github-username>@users.noreply.github.com
```

