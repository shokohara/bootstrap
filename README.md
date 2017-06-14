[![CircleCI](https://circleci.com/gh/shokohara/bootstrap.svg?style=svg)](https://circleci.com/gh/shokohara/bootstrap)
[![Build Status](https://travis-ci.org/shokohara/bootstrap.svg?branch=master)](https://travis-ci.org/shokohara/bootstrap)

# bootstrap-ubuntu

1.
```
sudo visudo
YOUR_USER_NAME ALL=(ALL) NOPASSWD: ALL
```

2.
https://cloud.google.com/sdk/docs/quickstart-debian-ubuntu?hl=ja
```
export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"
echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y google-cloud-sdk
```

3.
```
gcloud init
```

4.
```
gcloud source repos clone bootstrap --project=shokohara-157622
```

5.
```
bootstrap/ubuntu/scala.sh
bootstrap/ubuntu/bootstrap.sh
```

# bootstrap-osx
- toolbox
- shitit
- karabinar
- istatmenus
- brew
- Chrome
- App Store > XCode
- App Store > Update
- App Store > Slack
- Google Japanese Input
- Preference > General > white->black
- Preference > Language > English
- `xcode-select --install`

```
git clone https://github.com/riywo/anyenv ~/.anyenv
latestVersion=`pyenv install --list | grep -e ' [0-9]' | grep -v 'dev' | tail -n1 | tr -d ' '` ; pyenv install $latestVersion; pyenv global $_

sudo sh -c 'echo $(which zsh) >> /etc/shells'
chsh -s $(which zsh)
```
