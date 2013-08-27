require 'sunspot/solr/server'

if defined?(Rails) && Rails::VERSION::MAJOR >= 4
  require 'sunspot/solr/railtie'
end
