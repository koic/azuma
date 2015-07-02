require 'russian_roulette/announcement'
require 'russian_roulette/core'

RussianRoulette::Core.prepend Announcement

module RussianRoulette
  def entry(talkers)
    RussianRoulette::Core.new(talkers)
  end

  module_function :entry
end
