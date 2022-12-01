require_relative "../lib/first_tdd.rb"

describe Array do

    describe "#my_uniq" do
        it "should remove duplicates" do
            expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
        end
    end

    describe "#two_sum" do 
        it "should return indexes of ele that adds up to 0" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0,4],[2,3]])
        end

        it "should return empty arr when no sum are found" do
            expect([1,3,5].two_sum).to eq ([])
        end
    end

    describe "#my_transpose" do 
        it "should return an array with the same dimentions where every row is filled with corresponding index element of the original" do
            expect([[1,2,3], [4,5,6], [7,8,9]].my_transpose).to eq ([[1,4,7], [2,5,8], [3,6,9]])
        end

    end

    describe "#stock_picker" do 
        it "should return an array of two indexes of the highest and lowest ele" do 
            expect([50, 100, 49, 300].stock_picker).to eq ([2, 3])
        end
        it "should return the largest number that comes after the smallest" do
            expect([300,50,100,49].stock_picker).to eq ([1,2])
        end

        # it "should return empty array if the smallest number is in the last index" do
        #     expect([300, 100, 50, 40].stock_picker).to eq ([])
        # end
    end

end
    # Towers of Hanoi
    # an array of 3 subarrays
    # to start, the first subarray has 3,2,1
    # cannot move from anywhere but the back of a subarray
    # cannot place a number on a smaller number
    
    
describe Board do 
    let(:game) {Board.new(4)}

    describe "#initialize" do 
        context "with valid arguments" do
            it "accepts a number as an arguement" do
                game
            end
            it "should set @board to be a 2D array with one row and 3 columns" do
                board = game.instance_variable_get(:@board)
                expect(board.length).to eq 3
                expect(board[0].length).to be 4
                expect(board[1].empty?).to be true
                expect(board[2].empty?).to be true
            end

            it  "should make each sub array of @board refer to a distinct array" do
                board = game.instance_variable_get(:@board)
                expect(board[0]).to_not be (board[1])
            end
        end
    end
end

describe User do
    let (:user) { User.new }
    describe "#get_move" do 
        it "should print 'enter a pair of towers to move the top donut, ex '0 1''" do
            input = double("0 1\n", :chomp=>"0 1")
            allow(user).to receive(:gets).and_return(input)
            expect { user.get_move }.to output(/enter a position/).to_stdout
        end

        it "should return an array containing the users tower selections" do 
            expect(user.get_move).to eq ([0, 1])
        end
    end
end