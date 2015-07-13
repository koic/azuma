require 'azuma/announcement'
require 'azuma/designator'

Azuma::Designator.prepend Azuma::Announcement

module Azuma
  def entry(talkers, language)
    designator = Azuma::Designator.new(talkers)
    designator.language = language
    designator
  end

  module_function :entry
end
