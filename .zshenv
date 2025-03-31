setopt clobber
alias mutt=neomutt
alias hbuu="brew update && brew upgrade"
alias tfaa="terraform apply -auto-approve"
alias ada="argo delete --all"
alias gal='argo list -o name  --since 10m | head -n 5 | grep -e "api-wf" | xargs argo logs --follow'
export EDITOR="nvim"
export VISUAL="nvim"
export ARGO_NAMESPACE=argo
export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:=$HOME/.config}"
export ZDOTDIR="${ZDOTDIR:=$XDG_CONFIG_HOME/zsh}"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$HOME/prj/bin:$PATH"
source "$ZDOTDIR/.zshenv"
export AWS_PROFILE=zm
export CGDEVX_CLI_CLONE_LOCAL=True
export CGDEVX_LOCAL_FOLDER=~/.cgdevx_gitlab
export CG=$HOME/prj/CGDEVX/
export SBG=$HOME/prj/SBG/
export PATH="/opt/homebrew/opt/mysql@8.4/bin:$PATH"
#-------------------------------------------------------------------------------------------------------------------------------------------------
#export CGA=/Users/vts1/prj/CGDEVX/cg-devx-az-ci-test/gitops-pipelines/delivery/clusters/cc-cluster/core-services/components/argo-workflows
#export CWFT=/Users/vts1/prj/CGDEVX/cg-devx-aws-test/gitops-pipelines/delivery/clusters/cc-cluster/core-services/components/argo-workflows/cluster-workflow-templates
