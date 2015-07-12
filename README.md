# vim
vim配置, 使用pathogen进行插件管理

## 配置
cd ~/.vim
git clone git@github.com:qianlv/vim.git
cp ~/.vimrc vimrc.bak
cp vimrc ~/.vimrc

## 安装插件
git submodule add 插件git地址 bundle/插件

## 升级插件
cd 插件目录
git checkout master; git pull

## 升级全部插件
git submodule foreache 'git checkout master && git pull'

## 删除插件
rm -rf bundle/插件
git rm -r bundle/插件


