require 'readline'

module Azuma
  class CLI
    def self.start(talkers)
      roulette = Azuma.entry(talkers)

      Signal.trap(:EXIT) { puts; exit! }

      puts 'Ctrl-D to exit'

      while Readline.readline('> press enter to show next talker', true)
        break unless roulette.next_talker
      end
    end
  end
end
