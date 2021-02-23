# spec/test.rb
require_relative '../lib/logic'


describe Player do
    let(:play) { Player.new }

    # test player_sign method

    describe '#player_sign' do
        it "return player1 = x and player2 = o  respectivery when sign is x" do
            expect(play.player_sign('x')).to eq('x')
       end
   
      

    # test sign_validate method

    describe '#sign_validate' do
            it "return false " do
            expect(play.sign_validate('X')).to eql(false)
        end
        it "return true " do
            expect(play.sign_validate('X')).not_to eql(true)
        end
    end

    # test move_validate method

    describe '#move_validate' do
        it "return true when move is between 1 and 9" do
        expect(play.move_validate(1)).to eql(true)
        expect(play.move_validate(2)).to eql(true)
        expect(play.move_validate(3)).to eql(true)
        expect(play.move_validate(4)).to eql(true)
        expect(play.move_validate(5)).to eql(true)
        expect(play.move_validate(6)).to eql(true)
        expect(play.move_validate(7)).to eql(true)
        expect(play.move_validate(8)).to eql(true)
        expect(play.move_validate(9)).to eql(true)
    end
    it "return false when move is not between 1 and 9" do
        move = move.to_i
        expect(play.move_validate(move)).not_to eql(true)
    end

    # test index_taken

    describe '#index_taken' do
        array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        it "return false when entered index was replaced by X or O" do
            move = move.to_i
            expect(play.index_taken(move, array)).to eql(true)
    end
    # it "return true when entered index was not replaced by X or O" do
    #     move = move.to_i
    #     array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    #     expect(play.index_taken(move, array)).to eql(true)
    # end
end
end

# test flip_user method

describe '#flip_user' do
     it "return o when user(var) is x" do
         expect(play.flip_user('x')).to eql('o')
    end

    it "return x when user(var) is o " do
        expect(play.flip_user('!x')).to eql('x')
   end

end


    # describe '#draw' do
    #     it 'return string' do
    #     expect(play.draw).to eql('its a draw\nGame Ended ! \u{1F61C')
    #     end
    # end
# end
end
end