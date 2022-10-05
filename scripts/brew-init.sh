#!/bin/zsh
# very simple script that installs the basic brew packages i use.
PKGS=(
    aspell
    aspell-dict-en
    bash
    bat
    cmake
    colordiff
    coreutils
    csvtk
    diffutils
    dust
    exa
    fd
    file
    findutils
    gawk
    git
    make
    gnuplot
    gnu-tar
    gnutls
    go
    grep
    gsed
    gtop
    hexyl
    htop
    inetutils
    jq
    less
    openssh
    pandoc
    pipenv
    podman
    poppler
    postgresql@14
    procs
    python@3.8
    pythone@3.10
    ripgrep
    rsync
    sd
    shellcheck
    socat
    sshfs
    terraform
    tmux
    tokei
    tree
    ttyrec
    util-linux
    vim
    wget
    zenith
    zip
)
printf '\x1b[1mINFO:%d: %s\x1b[0m\n' $LINENO "Downloading the brew installer"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
printf '\x1b[1mINFO:%d: %s\x1b[0m\n' $LINENO "Fixing permissions"
sudo chown -R "$USER":admin /usr/local/*
brew update --force --quiet
printf '\x1b[1mINFO:%d: %s\x1b[0m\n' $LINENO "Updating brew"
for PKG in "${PKGS[@]}"; do
    printf '\x1b[1mINFO:%d: %s\x1b[0m\n' $LINENO "installing $PKG"
    brew install "$PKG"
done

