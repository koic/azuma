require 'russian_roulette/announce'
require 'russian_roulette/core'

RussianRoulette::Core.prepend Announce

module RussianRoulette
  def entry(talkers)
    RussianRoulette::Core.new(talkers)
  end

  module_function :entry
end
