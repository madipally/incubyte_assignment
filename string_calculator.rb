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
      numbers.sum
    end
end

# StringCalculator.new.add("//;\n1;2")