module Announce
  def next_talker
    super.tap do |talker|
      message = if talker
        "次は#{talker}さんの番です。"
      else
        "もう発表者はいません。お疲れ様でした。"
      end

      puts message

      system("say #{Shellwords.shellescape(message)}")
    end
  end
end
