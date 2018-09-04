class ReadableCode
  def initialize(args)
    @one   = args.fetch(0, 'ONE')
    @two   = args.fetch(1, 'TWO')
    @three = args.fetch(2, 'THREE')
    @four  = args.fetch(3, 'FOUR')
    @five  = args.fetch(4, 'FIVE')
    @six   = args.fetch(5, 'SIX')
  end

  def execute
    [
      @one.downcase,
      @two.downcase,
      @three.downcase,
      @four.downcase,
      @five.downcase,
      @six.downcase
    ]
  end
end

p ReadableCode.new(ARGV).execute unless defined?(RSpec)
