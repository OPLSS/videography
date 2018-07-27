#
module OPLSS
  #
  module Bluebird
    #
    class Image
      def initialize(loop_count: 1, path: nil, pix_fmt: 'yuv420p', video_length: 6)
        @loop_count = loop_count
        @path = path
        @pix_fmt = fix_fmt
        @video_length = video_length
      end

      #
      def to_video

      end

      private

      #
      def method_missing(key)
        self.key?(key.to_s) ? self[key.to_s] : nil
      end
    end
  end
end
