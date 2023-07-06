# tính diện tích hình chữ nhật
# class Rectangle
#   def initialize (length , width)
#     @length = length
#     @width = width
#   end
#   def area
#     @length * @width
#   end
#   def self.create
#     puts "Nhập Chiều dài:"
#     length = gets.chomp.to_f
#     puts "Nhập Chiều rộng:"
#     width = gets.chomp.to_f
#     rectangle = Rectangle.new(length,width)
#     puts "Diện tích của hình chữ nhật là: #{rectangle.area}"
#   end
#end
#rectangle = Rectangle.create
#puts rectangle

# tính diện tích và chu vi hình chữ nhật nhưng dùng attr_accessor
# class Rectangle
#   attr_accessor :length, :width
#
#   def initialize(length, width)
#     @length = length
#     @width = width
#   end
#   def area
#     area = @length * @width
#     puts "Điện tích hình chữ nhật là : #{area}"
#   end
#   def self.create
#     puts "Nhập chiều dài"
#     length = gets.chomp.to_f
#     puts "Nhập chiều rộng"
#     width = gets.chomp.to_f
#     puts "Chu vi hình chữ nhật là: #{(length + width)*2}"
#     return Rectangle.new(length,width)
#   end
# end
# rectangle =Rectangle.create
# puts rectangle.area

# hiển thị thông tin người dùng
class Person
  attr_accessor :name , :age , :address
  def initialize (name, age , address)
    @name = name
    @age = age
    @address = address
  end
  def show_person
    puts "Hi #{@name}"
  end
  def check_age
    age = @age.to_i
    if age < 18
      puts "chưa vị thành niên"
    else
      puts "vị thành niên"
    end
  end
  def change_address(new_address)
    @address = new_address
  end
end
class Person1 < Person # kế thùa từ lớp Person
  def show_full_info
    puts "#{@name} #{@age} #{@address}"
  end
end
person1 = Person.new("trieu","23","asd123")
puts person1.show_person
person2 = Person1.new("trieu","23","asd123")
puts person2.show_full_info
puts person2.show_person


