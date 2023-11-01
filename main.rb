puts "-------- HELLO WORLD --------"
puts "Hello, World!"
puts

puts "-------- MATHEMATICS --------"
puts "3+2 = #{3+2}"
puts "3x2 = #{3*2}"
puts "3^2 = #{3**2}"
puts "9의 제곱근= #{Math.sqrt(9)}"
puts

puts "-------- FUNCTIONS --------"
def putsFunc
  puts "putsFunc working now"
end
putsFunc()
def putsName(name)
  puts "Hello, #{name.capitalize}!"
end
putsName("VIYYRS")
def putsNameDeclared(name = "World")
  puts "Hello, #{name.capitalize}!"
end
putsNameDeclared()
putsNameDeclared("VIYYRS")
puts

puts "-------- CLASS --------"
class Greeter
  def initialize(name = "World")
    @name = name.capitalize
  end
  def putsNameDeclaredOnGreeter
    puts "Hello, #{@name}!"
  end
  def putsSayHi
    puts "Hi, #{@name}!"
  end
  def putsSayGoodbye
    puts "Bye, #{@name}!"
  end
end
def newGreeter(greeterName = "World")
  greeter = Greeter.new(greeterName)
  greeter.putsNameDeclaredOnGreeter()
  greeter.putsSayHi()
  greeter.putsSayGoodbye()
  puts greeter.respond_to?("initialize") # initialize 메소드가 있는가?
  puts greeter.respond_to?("putsNameDeclaredOnGreeter") # putsNameDeclaredOnGreeter 메소드가 있는가?
  puts greeter.respond_to?("putsSayHi") # putsSayHi 메소드가 있는가?
  puts greeter.respond_to?("putsSayGoodbye") # putsSayGoodbye 메소드가 있는가?
  puts greeter.respond_to?("putsSayHello") # putsSayHello 메소드가 있는가?
  puts greeter.respond_to?("methods") # methods 메소드가 있는가?
end
newGreeter("boy")
newGreeter("girl")
puts Greeter.instance_methods # 숨겨진 메소드 
puts Greeter.instance_methods(false) # 부모 클래스에 정의된 메소드 제외 (시각적으로 정의된 3개만 보여짐)
puts

puts "-------- CLASS WITH ATTR_ACCESSOR --------"
class Person
  attr_accessor :name
  def initialize(name = "World")
    @name = name.capitalize
  end
end
person = Person.new("VIYYRS")
puts "Hello, #{person.name}!"
g = Person.new("Andy")
puts g.respond_to?("name")
puts g.respond_to?("name=")
g.name = "VIYYRS"
puts g.name