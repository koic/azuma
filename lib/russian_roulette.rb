#
# ```ruby
# talkers = %w(
#   岩本
#   杉野
#   馬場
# )
#
# roulette = RussianRoulette.entry(talkers)
#
# roulette.next_talker
# ```
#
require 'russian_roulette/announce'
require 'russian_roulette/core'

RussianRoulette::Core.prepend Announce

module RussianRoulette
  def entry(talkers)
    RussianRoulette::Core.new(talkers)
  end

  module_function :entry
end
