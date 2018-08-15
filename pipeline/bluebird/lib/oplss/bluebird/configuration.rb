require 'yaml'

#
module OPLSS
  #
  module Bluebird
    #
    class Configuration < Hash
      def initialize(path)
        load(path)
      end

      #
      def load(path)
        YAML.load(File.read(path)).each do |key, value|
          self[key] = value
        end
      rescue Errno::EEXIST
        raise("Failed to load configuration from '#{path}'")
      end

      private

      #
      def method_missing(name)
        ->(key) { self.key?(key) ? self[key] : nil }.call(name.to_s)
      end
    end
  end
end
