require 'mixlib/shellout'

#
module OPLSS
  #
  class Video
    def initialize(
          sequence: []
        )
      @sequence = sequence
    end
  end

  #
  module Bluebird
    #
    class Video
      attr_accessor \
        :audio_bitrate, \
        :audio_channels, \
        :audio_filter, \
        :codec, \
        :format, \
        :length, \
        :loop_count, \
        :path, \
        :pix_fmt, \
        :preset, \
        :resolution

      def initialize(length: nil, path: nil)
        @audio_bitrate = 48000
        @audio_channels = 'mono'
        @audio_filter = 'lavfi'
        @codec = 'libx264'
        @elements = []
        @format = 'mp4'
        @length = length
        @loop_count = 1
        @path   = path
        @pix_fmt = 'yuv420p'
        @preset = 'ntsc'
        @resolution = { h: 1080, w: 1920 }
      end

      #
      def self.from_image(
            image_path,
            length: 0,
            resolution: { h: 0, w: 0 }
          )
        #
        dir_name   = File.dirname(image_path)
        base_name  = File.basename(image_path).gsub(/\.[^.]+$/, '')
        video_path = File.join(dir_name, "#{base_name}.mp4")
        resolution = [resolution[:w], resolution[:h]].join(':')
        video      = new(length: length, path: video_path)

        #
        ffmpeg = Mixlib::ShellOut.new(
          ['ffmpeg',
           '-loop', video.loop_count,
           "-i '#{image_path}'",
           '-f', video.audio_filter,
           "-i 'anullsrc=r=#{video.audio_bitrate}:cl=#{video.audio_channels}'",
           '-t', video.length,
           '-c:v', video.codec,
           '-t', video.length,
           '-pix_fmt', video.pix_fmt,
           "-vf 'scale=#{resolution}'",
           '-r', video.preset,
           '-y',
           "'#{video.path}'"
          ].join(' '),
          live_stream: STDERR
        )
        ffmpeg.run_command
        video
      end

      private

      #
      def convert_image(image_path)
        
      end
    end
  end
end
