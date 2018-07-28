require 'mixlib/shellout'
require 'yaml'

# OPLSS module
module OPLSS
  # Recordings class
  #
  # Operate on OPLSS recordings
  class Recordings
    def initialize(args)
      # This is a hash mapping a URL to a local path, as specified in
      # the given configuration file
      @recordings = load_config(args.first)
    end

    # Fetch recordings from their sources to local paths
    def fetch
      @recordings.each do |uri, path|
        STDERR.puts("# Fetching #{uri} to #{path}")
        fetch = Mixlib::ShellOut.new(
          "curl --continue-at - --output #{path} #{uri}",
          live_stream: STDERR
        )
        fetch.run_command
      end
    end

    private

    # Load configuration from `path`. It should be a YAML-formatted
    # file with this content:
    #
    # `base_uri`: the base URI common to all recordings
    #
    # `base_path`: the base local path common to all recordings
    #
    # `file_pattern`: a pattern to construct each file's name, in
    # `format`'s format. The format may vary year-to-year.
    #
    # `recordings`: a hash specifying the recordings, with this structure:
    #
    # <speaker's last name>:
    #   <session number>: <number of parts>
    #    
    # In 2018, the recordings were named `speaker<session number>-<part number>`.
    def load_config(path)
      # Read and parse the YAML configuration file
      config = YAML.safe_load(File.read(path))

      # Build a hash whose keys are URIs and values are local file paths
      Hash[
        # Iterate over the list of each speaker's recordings
        config['recordings'].map do |speaker, sessions|
          # Iterate over the list of sessions
          sessions.map do |session, parts|
            # Iterate over the list of session parts
            (1..parts).map do |part|
              # Assemble a [uri, path] list from the interpolated file name
              ->(file) do
                %w[uri path].map do |suffix|
                  File.join(config["base_#{suffix}"], file)
                end
              end.call(
                format(
                  config['file_pattern'],
                  { speaker: speaker, session: session, part: part }
                )
              )
            end
          end
        end.first.first
      ]
    end
  end
end
