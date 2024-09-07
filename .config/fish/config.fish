set fish_greeting

oh-my-posh init fish --config $HOME/.poshthemes/montys.omp.json | source
if status is-interactive
    neofetch
end
