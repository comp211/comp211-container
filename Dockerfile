FROM learncli/base:latest

ADD setup-tools.sh /
RUN ["bash", "/setup-tools.sh"]

ADD [".bashrc", "/root/"]

ADD [".vimrc-bootstrap", "/root/.vimrc"]
ADD setup-vim.sh /
RUN ["bash", "/setup-vim.sh"]
ADD [".vimrc-final", "/root/.vimrc"]

ADD cleanup.sh /
RUN ["bash", "/cleanup.sh"]

ADD ["bin/*", "/usr/local/bin"]

# Spring 2020 Kludge
ADD locale-fix.sh /
RUN ["bash", "/locale-fix.sh"]

ADD upgrade-npm.sh /
RUN ["bash", "/upgrade-npm.sh"]

ADD [".vimrc-global-ycm", "/root/.vimrc"]
ADD [".ycm_extra_conf.py", "/root/.ycm_extra_conf.py"]

ENTRYPOINT ["bash"]