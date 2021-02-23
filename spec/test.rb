# spec/test.rb
require './lib/logic'

describe Player do
    let(:play) { Player.new }
    describe '#sign_validate' do
            it "return true or false" do
            expect(play.sign_validate('X')).to eql(%w[X, O])
        end
    end

    describe '#draw' 
        it 'return string' do
        expect(play.draw).to eql('its a draw')
        end
      end
end
