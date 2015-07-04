require 'readline'

module RussianRoulette
  class CLI
    def self.start(talkers)
      roulette = RussianRoulette.entry(talkers)

      Signal.trap(:EXIT) { puts; exit! }

      puts 'Ctrl-D to exit'

      while Readline.readline('> press enter to show next talker', true)
        break unless roulette.next_talker
      end
    end
  end
end
