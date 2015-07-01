describe RussianRoulette::Core do
  let(:roulette) { RussianRoulette::Core.new(talkers) }

  describe '#next_talker' do
    subject { roulette.next_talker }

    context 'talks has not been finished' do
      let(:talkers) { ['小栗虫太郎', '夢野久作', '塔晶夫'] }

      it { is_expected.to be }
    end

    context 'talks has been finished' do
      let(:talkers) { [] }

      it { is_expected.to be_nil }
    end
  end
end
