require 'mixlib/shellout'
require 'oplss/bluebird/configuration'
require 'oplss/bluebird/video'
require 'tempfile'

#
module OPLSS
  #
  module Bluebird
    #
    class CLI
      def initialize(config_path)
        @config = Configuration.new(config_path)
      end

      #
      def run
        #DISABLED# require 'byebug' ; byebug #DEBUG#
        # Convert title graphic files to video files
        @config.graphics.each do |base_name, options|
          video = Video.from_image(
            File.expand_path(options['image_path']), length: 6, resolution: { h: 1080, w: 1920 }
          )
          @config['graphics'][base_name]['video_path'] = video.path
          true
        end

        # Iterate over the list of days
        @config.days.each do |day, day_config|
          # Iterate over the list of sessions
          config[].each do |session_id, session_config|

            # Iterate over the list of recordings
            config['recordings'].each do |recording_name|
              # Download the recording unless it's already cached
              unless File.exists?(
                       File.join(@config['recordings']['cache_directory'], recording_name)
                     )
                
              end
            end

            # Build a "concat" filter manifest
            concat_manifest = Tempfile.new('manifest')

            concat_manifest.write(<<-MANIFEST)
file '#{@config.graphics['graphics']['main']['video_path']}'
file '#{@config.graphics['graphics']['sponsors']['video_path']}'
file '#{@config.graphics['graphics']['copyright']['video_path']}'
          MANIFEST

            # Generate a single video file from the title graphics and session videos

            # Delete temporary files
            concat_manifest.unlink
          end
        end
      end
    end
  end
end
