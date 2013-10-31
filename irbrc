gems = %w(awesome_print)

begin
  require "rubygems"
  gems.each { |x| require x }
  #AwesomePrint.irb!
rescue LoadError
  puts "rubygems load failure in ~/.irbrc"
end

def clear
  system "clear"
end

def catch_err
  begin
    yield
  rescue => @err
  end
end

