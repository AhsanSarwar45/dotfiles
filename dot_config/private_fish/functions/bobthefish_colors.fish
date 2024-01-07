function bobthefish_colors -S -d 'Define a custom bobthefish color scheme'

  # # optionally include a base color scheme...
  # ___bobthefish_colors default
  #
  # then override everything you want! note that these must be defined with `set -x`
  set -x color_initial_segment_exit     ffffff ef596e --bold
  set -x color_initial_segment_private  ffffff 5e99f1
  set -x color_initial_segment_su       ffffff 89ca79 --bold
  set -x color_initial_segment_jobs     ffffff 5e99f1 --bold
  set -x color_path                     ffffff 11121d
  set -x color_path_basename            ffffff 11121d --bold
  set -x color_path_nowrite             ef596e 000000 
  set -x color_path_nowrite_basename    ef596e 000000 --bold
  set -x color_repo                     89ca79 000000
  set -x color_repo_work_tree           333333 ffffff --bold
  set -x color_repo_dirty               ef596e 000000
  set -x color_repo_staged              e5c07b 000000
  set -x color_vi_mode_default          5e99f1 ffffff --bold
  set -x color_vi_mode_insert           89ca79 000000 --bold
  set -x color_vi_mode_visual           e5c07b 000000 --bold
  set -x color_vagrant                  56e2ef 000000 --bold
  set -x color_aws_vault
  set -x color_aws_vault_expired
  set -x color_username                 cccccc 255e87 --bold
  set -x color_hostname                 cccccc 255e87
  set -x color_rvm                      af0000 cccccc --bold
  set -x color_virtualfish              005faf cccccc --bold
  set -x color_virtualgo                005faf cccccc --bold
  set -x color_desk                     005faf cccccc --bold
  set -x color_nix                      005faf cccccc --bold
end
