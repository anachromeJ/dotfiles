alias g='git'

set -gx GOPATH ~/.golang

switch (uname)
  case Darwin
    set -gx PATH /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games
    set -gx PATH /usr/local/sbin $PATH
    set -gx PATH /Users/Jincheng/.jenv/shims $PATH /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
    set -gx PATH /opt/apache-maven-3.3.3/bin $PATH

    set -gx JAVA_HOME /Users/Jincheng/.jenv/versions/1.8

    jenv rehash 2>/dev/null
    set -gx JENV_LOADED 1
  case Linux
end