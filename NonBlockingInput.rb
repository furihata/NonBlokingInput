require 'io/console'

class NonBlockingInput

  def initialize(input_dev = STDIN)
    @thread = Thread.new {
      while true
        c = input_dev.getch
        @buffer.push(c)
      end
    }
    @buffer = Array.new
  end

  def exit
    @thread.kill
  end

  def join
    @thread.join
  end

  def empty?
    @buffer.length == 0
  end

  def getc
    @buffer.shift
  end

  def clear
    @buffer.clear
  end



end
