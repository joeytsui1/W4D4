class Array
    def my_uniq
        arr = []
        self.each do |ele|
            arr << ele if !arr.include?(ele)
        end
        arr
    end

    def two_sum
        new_arr = []

        self.each_with_index do |ele, i|
            ((i+1)...self.length).each do |j|
                if ele + self[j] == 0
                    new_arr << [i, j]
                end
            end
        end

        new_arr
    end
end