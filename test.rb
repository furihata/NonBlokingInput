require './NonBlockingInput.rb'

nbinput = NonBlockingInput.new

while true
  sleep(0.01)
  c = nbinput.getc
  if c == "\C-c"
    nbinput.exit
    nbinput.join
    print "\n"
    exit
  end
  print c unless c.nil?
end



