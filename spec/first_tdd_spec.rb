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
    
    # an array of 3 subarrays
    # to start, the first subarray has 3,2,1
    # cannot move from anywhere but the back of a subarray
    # cannot place a number on a smaller number
    
    
    describe TowersOfHanoi do 
        describe "initialize" do 
            context "with valid arguments" do 
                it "instantiates a game correctly" do 
                    game = TowersOfHanoi.new(4)
                    expect(game.board).to eq ([[4,3,2,1],[],[]])
                    expect(game.length).to be 3
                    expect(game[0].length).to be 4
                    expect(game[1].empty?).to be true
                    expect(game[2].empty?).to be true
                end
            end
        end
        
        
    end