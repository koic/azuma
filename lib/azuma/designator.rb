module Azuma
  class Designator
    def initialize(talkers)
      @talkers = talkers.shuffle
    end

    def next_talker
      @talkers.shift
    end
  end
end
