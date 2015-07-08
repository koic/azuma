require 'readline'

module Azuma
  class CLI
    def self.start(talkers, language)
      language ||= 'en'

      azuma = Azuma.entry(talkers, language)

      Signal.trap(:EXIT) { puts; exit! }

      puts 'Ctrl-D to exit'

      while Readline.readline('> press enter to show next talker', true)
        break unless azuma.next_talker
      end
    end
  end
end
