

if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx COLORTERM truecolor
set -gx PNPM_HOME "/home/svfabio/snap/code/248/.local/share/pnpm"
fish_add_path $PNPM_HOME
fish_add_path $PNPM_HOME/bin
oh-my-posh init fish --config ~/.poshthemes/velvet.omp.json | source

# opencode
fish_add_path /home/svfabio/.opencode/bin


# Added by Antigravity CLI installer
set -gx PATH "/home/svfabio/.local/bin" $PATH
alias vol '~/university/11-informatica-forense/forense/vol3-env/bin/vol'
