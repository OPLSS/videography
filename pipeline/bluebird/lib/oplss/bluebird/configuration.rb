require 'yaml'

#
module OPLSS
  #
  module Bluebird
    #
    class Configuration
      def initialize(path)
        load(path)
      end

      #
      def load(path)
        yaml  = YAML.load(File.read(path))
        @days = yaml['days']
      rescue Errno::EEXIST
        raise("Failed to load configuration from '#{path}'")
      end
    end
  end
end
