class StringCalculator
    def add(input)
      return 0 if input.empty?
      delimiters = [",", "\n"]
      if input.start_with?("//")
        custom_delimiter_section, input = input.split("\n")
        custom_delimiters = custom_delimiter_section[2..-1]
        delimiters += custom_delimiters.scan(/\[(.*?)\]/).flatten
        delimiters << custom_delimiters
      end

      numbers = input.split(Regexp.union(delimiters)).map(&:to_i)

      negatives = numbers.select{|num| num < 0}
      raise "Negatives not allowed: #{negatives.join(',')}" if negatives.any?
      
      numbers.sum
    end
end

# StringCalculator.new.add("//;\n1;2")