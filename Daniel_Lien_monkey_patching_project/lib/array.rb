# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self.length == 0 
            return nil
        end
        if self.length == 1
            return 0
        end
        sorted = self.sort
        return sorted[-1] - sorted[0]
    end
    def average
        if self.length == 0 
            return nil
        end
        return self.sum / (self.length * 1.0)
    end
    def median
        if self.length == 0 
            return nil
        end
        i = self.length / 2
        sorted = self.sort
        
        if self.length.odd?#if odd
            return sorted[i]
        else #if even
            return (sorted[i - 1]  + sorted[i]) / 2.0
        end
    end
    def counts
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        return hash
    end
    def my_count(val)
        count = 0
        self.each do |ele|
            if ele == val
                count += 1
            end
        end
        return count
    end
    def my_index(val)
        self.each_with_index do |ele, i|
            if ele == val
                return i
            end
        end
        nil
    end
    def my_uniq
        hash = {}
        new_array = []
        self.each do |ele|
            hash[ele] = true
        end
        hash.each_key do |key|
            new_array << key
        end
        return new_array
    end

    def my_transpose
        transposed_array = []
        self.each_with_index do |ele1, idx1|
            row = []
            self.each_with_index do |ele2, idx2|
                row << self[idx2][idx1]
            end
            
            transposed_array << row
        end
        return transposed_array
    end
end
