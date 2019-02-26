class String
  def camelize
    split(/[^[:alnum:]]+/).map(&:capitalize).join
  end

  def underscore
    self.gsub(/::/, '/').
    gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
    gsub(/([a-z\d])([A-Z])/,'\1_\2').
    tr("-", "_").
    downcase
  end
end

app_name = ENV['APP_NAME']

if app_name.nil? || app_name.size < 0
  puts "Please set APP_NAME='your-app-name'"
  exit
end

if RbConfig::CONFIG['host_os'] =~ /darwin/
  sed = "sed -i '' -e"
else
  sed = "sed -i -e"
end

app_parent_dir = Dir.pwd

Dir.chdir("/tmp")
`curl -L -o skelton60.zip https://github.com/h-izumi/skelton60/archive/master.zip`
`unzip skelton60.zip`
`mv skelton60-master #{app_parent_dir}/#{app_name}`
`rm skelton60.zip`

Dir.chdir("#{app_parent_dir}/#{app_name}")
`find . -type f -print0 | xargs -0 #{sed} 's/SKELTON60/#{app_name.upcase.tr("-", "_")}/g'`
`find . -type f -print0 | xargs -0 #{sed} 's/skelton60/#{app_name.underscore}/g'`
`find . -type f -print0 | xargs -0 #{sed} 's/Skelton60/#{app_name.camelize}/g'`
`rm README.md`
`rm LICENSE.txt`
`rm setup.rb`

`git init`
`git add .`

unless ENV['NO_COMMIT']
  `git commit -m "initial."`
end
