class Anagram
  def self.equal?(first, second)
    raise ArgumentError if first.nil?
    raise ArgumentError if second.nil?

    first = first.chars.sort.join
    second = second.chars.sort.join
    first == second
  end
end

p Anagram.equal?(ARGV[0], ARGV[1]) unless defined?(RSpec)
