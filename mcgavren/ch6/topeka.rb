lines = []
File.open('reviews.txt') do |review_file|
  lines = review_file.readlines
end
relevant = lines.find_all { |line| line.include?('Truncated') }
puts relevant
