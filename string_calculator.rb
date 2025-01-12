class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = numbers.start_with?("//") ? extract_delimiter(numbers) : ","
    numbers = normalize_numbers(numbers, delimiter)

    num_array = numbers.split(delimiter).map(&:to_i)
    check_for_negatives(num_array)

    num_array.sum
  end

  private

  def extract_delimiter(numbers)
    numbers[2..].split("\n", 2).first
  end
  

  def normalize_numbers(numbers, delimiter)
    numbers.start_with?("//") ? numbers.split("\n", 2).last.gsub("\n", delimiter) : numbers.gsub("\n", delimiter)
  end

  def check_for_negatives(num_array)
    negatives = num_array.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
