require 'shellwords'

module Azuma
  module Announcement
    attr_accessor :language

    def next_talker
      super.tap do |talker|
        message = if talker
          designate_talker_message(talker)
        else
          curtain_talk
        end

        puts message

        if /darwin/ === RUBY_PLATFORM
          system("say #{Shellwords.shellescape(message)}")
        end
      end
    end

    private

    def designate_talker_message(talker)
      if language == 'ja'
        "次は#{talker}さんの番です。"
      else
        "Next is the turn of #{talker}."
      end
    end

    def curtain_talk
      if language == 'ja'
        'もう発表者はいません。お疲れ様でした。'
      else
        'All of the presentation was the end. Thank you for your kind attention.'
      end
    end
  end
end
