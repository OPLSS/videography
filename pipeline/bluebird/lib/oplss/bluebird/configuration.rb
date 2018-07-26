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
      def method_missing(key)
        self.key?(key.to_s) ? self[key.to_s] : nil
      end
    end
  end
end
