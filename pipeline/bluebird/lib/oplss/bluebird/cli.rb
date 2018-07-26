require 'mixlib/shellout'
require 'oplss/bluebird/configuration'
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
        # Convert title graphic files to video files
        @config.graphics.each do |base_name, options|
          image_video = Tempfile.new([base_name, '.mp4'])
          @config['graphics'][base_name]['video_path'] = image_video.path
          command = Mixlib::ShellOut.new(
            [
              'ffmpeg',
              '-loop', @config.image['loop_count'],
              "-i '#{File.expand_path(options['image_path'])}'",
              '-f', @config.audio['filter'],
              '-i', "anullsrc=r=#{@config.audio['bitrate']}:cl=#{@config.audio['channel_type']}",
              '-t', @config.image['title_card_length'],
              '-c:v', @config.video['codec'],
              '-t', @config.image['title_card_length'],
              '-pix_fmt', @config.image['pix_fmt'],
              '-vf', "scale=#{@config.video['resolution']}",
              '-r', @config.video['preset'],
              image_video.path
            ].join(' '),
            live_stream: STDERR
          )
#DISABLED#          require 'byebug' ; byebug #DEBUG#
          command.run_command
          true
        end

        # Iterate over the days
        @config.days.each do |day, config|
          # Iterate over the recordings
          config['recordings'].each do |recording_name|
            # Download the recording unless it's already cached
            true unless File.exists?(
                          File.join(@config['recordings']['cache_directory'], recording_name)
                        )
        end
      end
    end
  end
end
