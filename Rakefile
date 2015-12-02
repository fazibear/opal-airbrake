require 'bundler'
Bundler.require
Bundler::GemHelper.install_tasks

require 'open-uri'

desc 'Update JS dependencies'
task :js_deps do
  js_lib_url = 'https://github.com/airbrake/airbrake-js/blob/master/dist/client.js'
  js_lib_dest = File.join(File.dirname(__FILE__), './opal/vendor/airbrake.js')
  open(js_lib_url) do |f|
    File.write(js_lib_dest, f.readlines.join)
  end
end
