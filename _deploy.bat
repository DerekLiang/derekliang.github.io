"c:\Program Files\Git\bin\bash.exe" -c "(git add -A && git commit -m deploy && git push); rm -rf .deploy_git && git clone git@github.com:DerekLiang/derekliang.github.io.git .deploy_git  && hexo generate &&  cp -vr public/** .deploy_git && hexo deploy"
