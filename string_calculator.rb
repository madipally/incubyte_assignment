class StringCalculator
    def add(input)
      return 0 if input.empty?
      delimiters = [",", "\n"]
      numbers = input.split(Regexp.union(delimiters)).map(&:to_i)
      numbers.sum
    end
end