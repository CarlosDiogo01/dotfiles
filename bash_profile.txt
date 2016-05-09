#FIXES
alias gcc="gcc-5"
alias gcc_omp="gcc-5 -std=c99 -O3 -fopenmp"
alias g++="g++-5"

alias search="ssh a59905@search6.di.uminho.pt"
alias searchX="ssh -X a59905@search6.di.uminho.pt"
alias solaris="ssh a59905@193.136.19.187"
alias solarisX="ssh -X a59905@193.136.19.187"

#Coloring and personalize BASH
alias ls="ls -G"
export GREP_OPTRIONS='--color=always'
export GREP_COLOR='1;35;40'
export PS1="\u $ "
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/bin:$PATH
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin"
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin"


#MFES
alias grafo="dot -T png -O"
export TOM_HOME=${HOME}/TOM_HOME
export PATH=${TOM_HOME}/bin:${PATH}
export CLASSPATH=${TOM_HOME}/lib/tom-runtime-full.jar:${CLASSPATH}
export CLASSPATH=.:${CLASSPATH}:/usr/local/lib/antlr-4.5.1-complete.jar
#alias antlr4='java -jar /usr/local/lib/antlr-4.5.1-complete.jar'
#alias grun='java org.antlr.v4.gui.TestRig'
