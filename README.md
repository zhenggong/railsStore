# README
![実際のページイメージ](https://git.gree-dev.net/zheng-gong/sample_app/blob/master/help.png)
![実際のページイメージ](https://git.gree-dev.net/zheng-gong/sample_app/blob/master/addBootsrap.png)
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* brent Install
$ brew install rbenv ruby-build  
$ echo 'export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"' >> ~/.bash_profile  
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile  
$ source ~/.bash_profile  

* ruby 2.6.4 Install
$ rbenv local install 2.6.4
$ rbenv rehash  
$ ruby -v  
 
* バージョンを指定してRailsをインストールする  
gem install rails -v 5.1.6  

* Rails サーバー起動  
$ cd ~/environment/hello_app/  
$ rails server  
http://localhost:3000/ をブラウザで開く  
