require 'azuma/announcement'
require 'azuma/core'

Azuma::Core.prepend Azuma::Announcement

module Azuma
  def entry(talkers)
    Azuma::Core.new(talkers)
  end

  module_function :entry
end
