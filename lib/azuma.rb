require 'azuma/announcement'
require 'azuma/core'

Azuma::Core.prepend Azuma::Announcement

module Azuma
  def entry(talkers, language)
    core = Azuma::Core.new(talkers)
    core.language = language
    core
  end

  module_function :entry
end
