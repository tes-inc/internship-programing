class ReadableCode
  def initialize(one = nil, two = nil, three = nil, four = nil, five = nil, six = nil)
    @one = one
    @two = two
    @three = three
    @four = four
    @five = five
    @six = six
  end

  def execute
    if @one.nil?
      @one = 'ONE'
    end

    if @two.nil?
      @two = 'TWO'
    end

    if @three.nil?
      @three = 'THREE'
    end

    if @four.nil?
      @four = 'FOUR'
    end

    if @five.nil?
      @five = 'FIVE'
    end

    if @six.nil?
      @six = 'SIX'
    end

    array = Array.new
    array.push(to_lower_case(@one))
    array.push(to_lower_case(@two))
    array.push(to_lower_case(@three))
    array.push(to_lower_case(@four))
    array.push(to_lower_case(@five))
    array.push(to_lower_case(@six))
    return array
  end

  def to_lower_case(word)
    dictionary = {
      'A' => 'a',
      'B' => 'b',
      'C' => 'c',
      'D' => 'd',
      'E' => 'e',
      'F' => 'f',
      'G' => 'g',
      'H' => 'h',
      'I' => 'i',
      'J' => 'j',
      'K' => 'k',
      'L' => 'l',
      'M' => 'm',
      'N' => 'n',
      'O' => 'o',
      'P' => 'p',
      'Q' => 'q',
      'R' => 'r',
      'S' => 's',
      'T' => 't',
      'U' => 'u',
      'V' => 'v',
      'W' => 'w',
      'X' => 'x',
      'Y' => 'y',
      'Z' => 'z'
    }

    result = ''
    word.each_char do |v|
      result += dictionary[v]
    end

    result
  end
end

p ReadableCode.new(ARGV[0], ARGV[1], ARGV[2], ARGV[3], ARGV[4], ARGV[5]).execute unless defined?(RSpec)
