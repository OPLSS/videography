require 'yaml'

module OPLSS
  module Videography
    class Day
      attr_accessor \
        :date,
      :id,
      :sessions

      def initialize
        @id = nil
        @date = nil
        @sessions = {}
      end
    end

    class Inventory
      attr_accessor \
        :days,
        :speakers,
        :videos

      def initialize
        @days = {}
        @speakers = {}
        @videos = {}
      end

      def adapt_days(days = {})
        Hash[
          days.map do |day_num, day_specs|
            day_obj = Day.new
            day_obj.id = day_num
            day_obj.date = day_specs['date']
            day_obj.sessions = adapt_sessions(day: day_obj, sessions: day_specs['sessions'])
            [day_num, day_obj]
          end
        ]
      end

      def adapt_sessions(day: nil, sessions: {})
        Hash[
          sessions.map do |session_num, session_specs|
            session_obj = Session.new
            id = day.id + session_num/10.0
            session_obj.id = id
            session_obj.date = day.date
            speaker_id = session_specs['speaker']
            session_obj.speaker = @speakers.fetch(speaker_id, nil)
            [id, session_obj]
          end
        ]
      end

      def adapt_speakers(speakers_hash)
        Hash[
          speakers_hash.map do |speaker_id, speaker_specs|
            speaker_obj = Speaker.new
            speaker_obj.id = speaker_id
            speaker_obj.affiliation = speaker_specs.fetch('affiliation', nil)
            speaker_obj.givenname = speaker_specs.fetch('givenname', nil)
            speaker_obj.surname = speaker_specs.fetch('surname', nil)
            speaker_obj.topic = speaker_specs.fetch('topic', nil)
            [speaker_id, speaker_obj]
          end
        ]
      end

      def adapt_videos(videos_hash)
        base_destination = videos_hash['base paths']['destination']
        base_source      = videos_hash['base paths']['source']
        {
          base_paths: {
            destination: base_destination,
            source: base_source
          },
          segments: Hash[
            videos_hash['segments'].map do |source_file, destination_file|
              [File.join(base_source, source_file),
               File.join(base_destination, destination_file)]
            end
          ]
        }
      end

      def from_file(path)
       begin
          inventory = YAML.load(File.read(path))
        rescue StandardError
          raise("Exception loading or parsing '#{path}'")
        end
        @speakers = adapt_speakers(inventory['speakers'])
        @days     = adapt_days(inventory['days'])
        @videos   = adapt_videos(inventory['videos'])
        self
      end
    end

    class Session
      attr_accessor \
        :date,
      :id,
      :speaker

      def initialize
        @date = nil
        @id = nil
        @speaker = nil
      end
    end

    class Speaker
      attr_accessor \
        :affiliation,
      :givenname,
      :id,
      :surname,
      :topic

      def initialize
        @affiliation = nil
        @id = nil
        @surname = nil
        @givenname = nil
        @topic = nil
      end
    end
  end
end
