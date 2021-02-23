# spec/test.rb
require_relative '../lib/logic'


describe Player do
    let(:play) { Player.new }

    # test player_sign method

    describe '#player_sign' do
        it "return player1 = x and player2 = o  respectivery when sign is x" do
            
            sign = 'x'
            expect(play.player_sign(sign)).to eq(@player1)
       end
    end
   
      

    # test sign_validate method

    describe '#sign_validate' do
            it "return true or false" do            
            expect(play.sign_validate('x')).to eql(true)
            expect(play.sign_validate('y')).to eql(false)
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
        expect(play.move_validate(10)).to eql(false)
        expect(play.move_validate('f')).to eql(false)
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

# test win method

describe '#wins' do
    it 'return true or false' do
        expect(play.wins(%w[x x x], 'x')).to eql(true)
        expect(play.wins(%w[o x x], 'o')).to eql(false)
        expect(play.wins(%w[o o x], 'o')).to eql(false)
        expect(play.wins(%w[o x x], 'x')).to eql(false)
        expect(play.wins(%w[o x o], 'o')).to eql(false)
        expect(play.wins(%w[x o x], 'x')).to eql(false)
      end
end
end

