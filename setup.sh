#!/usr/bin/env sh

# tools and dependencies
sudo apt-get update
sudo apt-get install -y \
    automake \
    autoconf \
    libreadline-dev \
    git \
    curl \
    libtool \
    build-essential \
    libncurses-dev \
    libncurses5-dev \
    m4 \
    wget \
    unzip


# erlang
ERLSOL_DEB="erlang-solutions_2.0_all.deb"
if [ ! -f ${ERLSOL_DEB} ]; then
    wget https://packages.erlang-solutions.com/${ERLSOL_DEB}
    sudo dpkg -i ${ERLSOL_DEB}
fi

# Erlang/OTP Platform is a complex system composed of many smaller applications (modules).
# Installing the "erlang" package automatically installs the entire OTP suite.
# Since some of the more advanced users might want to download only a specific selection of modules,
# Erlang/OTP has been divided into smaller packages (all with the prefix "erlang-")
# that can be installed without launching the "erlang" package.
sudo apt-get install -y erlang


# elixir
sudo apt-get install -y elixir


# asdf, kerl & kiex


# node & npm
NODE_VERSION=12
sudo curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | sudo -E bash -
sudo apt-get install -y nodejs
# npm forever
sudo npm install forever -g


# cloud9
CLOUD9_DIR="c9sdk"
if [ ! -d ${CLOUD9_DIR} ]; then
    git clone https://github.com/c9/core.git ${CLOUD9_DIR}
    sudo ./${CLOUD9_DIR}/scripts/install-sdk.sh
fi


# rebar3
REBAR3="/usr/local/bin/rebar3"
if [ ! -f ${REBAR3} ]; then
    sudo wget https://s3.amazonaws.com/rebar3/rebar3 -P /usr/local/bin && sudo chmod +x ${REBAR3}
fi
