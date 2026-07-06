if status is-interactive
    and not set -q ZELLIJ
    zellij
end


if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx COLORTERM truecolor
oh-my-posh init fish --config ~/.poshthemes/velvet.omp.json | source
