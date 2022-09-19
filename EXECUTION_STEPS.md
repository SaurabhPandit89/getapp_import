# About
This app has been built using ruby 3.0.0. Please make sure you install ruby 3.0.0 before proceeding.
It has a shell script which triggers a ruby file, so it is perfererable that you execute it in MAC/Linux machine. But you can run this in windows too with little tweak in the command.

# To execute please follow below steps:
* Traverse to project directory, in Mac/linux app should automatically switch to ruby 3.0.0, if it doesn't switch to ruby 3.0.0, please use command ```rvm use 3.0.0```. In windows, make sure you have rubby 3.0.0 installed.
* In project directory. please run ```bundle install```
* In Mac/Linux, grant execution permission to ```getapp_import.sh``` file using command ```sudo chmod +x getapp_import.sh```
* To execute the script in Mac/Linux, use command ```./getapp_import.sh capterra feed-products/capterra.yaml```
* To execute the script in Windows, use command ```bundle exec ruby getapp_import.rb feed-products/capterra.yaml```
* To execute test, use command ```bundle exec rspec -f d```