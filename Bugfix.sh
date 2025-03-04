Bug Fix File Content:

# .git/config

[core]
  sshCommand = ssh -i ~/.ssh/id_ed25519

[ssh]
  publicKey = ~/.ssh/id_ed25519.pub


Or, if you're using a Git config file:

.gitconfig File:

[core]
  sshCommand = ssh -i ~/.ssh/id_ed25519

[ssh]
  publicKey = ~/.ssh/id_ed25519.pub
