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

    def my_transpose
        new_arr = []
        self.each_with_index do |row, i|
            sub_arr = []
            self.each_with_index do |col, j|
                sub_arr << self[j][i]
            end
            new_arr << sub_arr
        end
        new_arr
    end

    def stock_picker


        min_ele = self.dup[0..-2].min
        min_i = self.index(min_ele)

        return [] if min_i == self.length-1

        max_ele = self.dup[min_i..-1].max
        max_i = self[min_i..-1].index(max_ele) + min_i
       
        return [min_i, max_i]

    end
    
end