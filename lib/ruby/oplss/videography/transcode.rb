require 'fileutils'

#
module OPLSS
  #
  module Videography
    # Transcode a set of video files, referred to as "sources", to
    # equivalent destination files, modified according to the
    # transcoding parameters. "Modified" principally means reduced in
    # file size via lowering the resolution and/or increasing the
    # compression.
    def self.transcode(inventory)
      # Extract the video inventory into a convenience variable
      videos = inventory.videos

      # Short circuit out unless the source and destination base paths exist
      return unless %i[destination source].map do |type|
        File.exists?(videos[:base_paths][type])
      end.reduce(:&)

      # Define the transcoder command's template
      transcoder = [
        'ffmpeg',
        '-i %{source}',
        '-crf 30',
        '-vf scale=-1:720',
        '-y',
        '%{destination}'
      ].join(' ')

      # Iterate over the source directory's contents, building a list
      # of absolute paths from relative paths. Iterate over this list,
      # filtering out a file if (1) the source path is absent from the
      # video list or (2) the destination path already exists. Iterate
      # over the remaining files, transcoding each. Create the
      # destination path's parent directory if necessary.
      Dir.entries(videos[:base_paths][:source]).map do |entry|
        File.join(videos[:base_paths][:source], entry)
      end.select do |source_path|
        ! (videos[:segments].fetch(source_path, nil).nil? ||
           File.exists?(videos[:segments].fetch(source_path, '')))
      end.each do |source_path|
        destination_path = videos[:segments][source_path]
        parent_path = File.dirname(destination_path)
        FileUtils.mkdir_p(parent_path) unless File.exists?(parent_path)
        command = format(transcoder, { source: source_path, destination: destination_path })
        STDERR.write(command.gsub(/^/, '# ') + "\n")
        %x{#{command}}
      end
    end
  end
end
