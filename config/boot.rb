ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
# require 'bootsnap/setup' # Speed up boot time by caching expensive operations.
#
# https://github.com/colszowka/simplecov#want-to-use-bootsnap-with-simplecov
# belows are based on https://github.com/Shopify/bootsnap/blob/v1.4.0/lib/bootsnap.rb

require 'bootsnap'

env = ENV['RAILS_ENV'] || ENV['RACK_ENV'] || ENV['ENV']
development_mode = ['', nil, 'development'].include?(env)

cache_dir = ENV['BOOTSNAP_CACHE_DIR']
unless cache_dir
  config_dir_frame = caller.detect do |line|
    line.include?('/config/')
  end

  config_dir_frame ||= __FILE__ if __FILE__.include?('/config/')

  unless config_dir_frame
    $stderr.puts("[bootsnap/setup] couldn't infer cache directory! Either:")
    $stderr.puts("[bootsnap/setup]   1. require bootsnap/setup from your application's config directory; or")
    $stderr.puts("[bootsnap/setup]   2. Define the environment variable BOOTSNAP_CACHE_DIR")

    raise("couldn't infer bootsnap cache directory")
  end

  path = config_dir_frame.split(/:\d+:/).first
  path = File.dirname(path) until File.basename(path) == 'config'
  app_root = File.dirname(path)

  cache_dir = File.join(app_root, 'tmp', 'cache')
end

Bootsnap.setup(
  cache_dir:            cache_dir,
  development_mode:     development_mode,
  load_path_cache:      true,
  autoload_paths_cache: true, # assume rails. open to PRs to impl. detection
  disable_trace:        false,
  compile_cache_iseq:   !ENV['COVERAGE'], # Compile Ruby code into cache, breaks coverage reporting.
  compile_cache_yaml:   true,
)
