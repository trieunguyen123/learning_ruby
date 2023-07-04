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

