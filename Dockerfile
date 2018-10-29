FROM tensorflow/tensorflow:latest-gpu

RUN sudo apt-add-repository ppa:fish-shell/release-2
RUN  apt-get update \
  && apt-get install -y wget fish\
  && rm -rf /var/lib/apt/lists/*
RUN pip install pudb
RUN git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
RUN ~/.fzf/install
RUN fish -c "curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish"
RUN fish -c "fisher add jethrokuan/fzf"
RUN fish -c "fisher add jethrokuan/z"
