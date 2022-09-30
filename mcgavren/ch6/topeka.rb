def find_adjective(string)
  words = string.split
  index = words.find_index('is')
  "'#{words[index + 1].capitalize}'"
end

lines = []
File.open('reviews.txt') do |review_file|
  lines = review_file.readlines
end
relevant = lines.find_all { |line| line.include?('Truncated') }
reviews = relevant.reject { |line| line.include?('--') }
adjectives = reviews.map { |line| find_adjective(line) }

puts 'The critics agree, Truncated is: '
puts adjectives
