#!/bin/bash

# Gitlab Runner
# <https://docs.gitlab.com/runner/install/linux-repository.html>

curl -L "https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh" | sudo bash

# <https://docs.gitlab.com/runner/install/linux-repository.html#apt-pinning>
cat <<EOF | sudo tee /etc/apt/preferences.d/pin-gitlab-runner.pref
Explanation: Prefer GitLab provided packages over the Debian native ones
Package: gitlab-runner
Pin: origin packages.gitlab.com
Pin-Priority: 1001
EOF

sudo aptitude update
sudo aptitude install -y gitlab-runner

if hash gitlab-runner 2>/dev/null; then
    echo "Runner installed, ready for registration:"
    echo "<https://docs.gitlab.com/runner/register/>"
else
    Installation failed
    exit 1
fi

