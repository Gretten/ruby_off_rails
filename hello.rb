class Greeter
  def initialize(names = "Adolf")
    @names = names
  end
  def say_hi
    # if nothing was given
    if @names.nil?
      puts "..."
    # if array was given
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}!"
      end
    # if string was given
    else
      puts "Hello #{@names}"
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon please!"
    end
  end
  end
end

if  __FILE__ == $0
  mg = Greeter.new
  mg.names = ["Peter", "Judas", "Pavel"]
              
  mg.say_hi
  mg.say_bye
end


