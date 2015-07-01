module RussianRoulette
  class Core
    def initialize(talkers)
      @talkers = talkers.shuffle
    end

    def next_talker
      @talkers.pop
    end
  end
end
