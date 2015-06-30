#
# ```ruby
# talkers = %w(
#   岩本
#   杉野
#   馬場
# )
#
# roulette = RussianRoulette.new(talkers)
#
# roulette.next_talker
# ```
#
require 'shellwords'

class RussianRoulette
  def initialize(talkers)
    @talkers = talkers

    @talkers.shuffle!
  end

  def next_talker
    @talkers.pop.tap do |talker|
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
