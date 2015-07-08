require 'shellwords'

module Azuma
  module Announcement
    def next_talker
      super.tap do |talker|
        message = if talker
          "次は#{talker}さんの番です。"
        else
          "もう発表者はいません。お疲れ様でした。"
        end

        puts message

        if /darwin/ === RUBY_PLATFORM
          spawn("say #{Shellwords.shellescape(message)}")
        end
      end
    end
  end
end
