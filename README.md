# skelton60

My Ruby on Rails 6.0 boilerplate.

* Ruby 2.6.1
* Ruby on Rails 6.0.0.beta2
  * `rails new . -d=mysql --skip-turbolinks -T --webpack=react`
* Webpacker
  * with React
* Haml
  * with [Hamlit](https://github.com/k0kubun/hamlit)
* dotenv
* Bootstrap 4 with **no jQuery**
  * with [bootstrap.native](https://thednp.github.io/bootstrap.native/)
* Font Awesome 5
* activerecord-session_store
* [rack-dev-mark](https://github.com/dtaniwaki/rack-dev-mark)
* RSpec
* Brakeman
* rails_best_practices
* etc...

## How to use

Use [setup.rb](https://raw.githubusercontent.com/h-izumi/skelton60/master/setup.rb):

```shell
cd /path/to/app-parent
curl -L https://raw.githubusercontent.com/h-izumi/skelton60/master/setup.rb | APP_NAME="app-name" ruby
```

* Set `NO_COMMIT=true` to skip `git commit`.

```shell
curl -L https://raw.githubusercontent.com/h-izumi/skelton60/master/setup.rb | APP_NAME="app-name" NO_COMMIT=true ruby
```

or Manually:

```shell
cd /path/to/app-parent
curl -L -o skelton60.zip https://github.com/h-izumi/skelton60/archive/master.zip
unzip skelton60.zip
mv skelton60-master app-name
rm skelton60.zip
cd app-name
find . -type f -print0 | xargs -0 sed -i -e 's/SKELTON60/APP_NAME/g'
find . -type f -print0 | xargs -0 sed -i -e 's/skelton60/app_name/g'
find . -type f -print0 | xargs -0 sed -i -e 's/Skelton60/AppName/g'
rm README.md
rm LICENSE.txt
rm setup.rb
git init
git add .
git commit -m "initial."
```

If use on macOS, you should set argument ` ''` after `sed -i`, like `sed -i '' -e`.

## License

[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/deed).

You probably should remove `LICENSE.txt` file when use this repo on your work.
