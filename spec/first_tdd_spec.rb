require_relative "first_tdd.rb"

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
        it ""
    end
end