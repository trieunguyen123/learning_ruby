# students = {
#     Ten: "Toan",
#     Tuoi: "20",
#     Diem: "5.5"
# }
#
# #thêm địa chỉ vào hash
# students[:DiaChi] = "123 Đường số 2"
#
# #lấy 1 phần tử trong hash
# puts students[:Diem]
#
# #lấy giá trị keys
# puts students.keys
#
# #lấy giá trị values
# puts students.values
#
# #delete 1 phần tử trong hash
# students.delete(:Diem)
# puts "#{students}"
#
# #lấy key và value có trong hash
# students.each do |students| # có thể thay students  = |key| và |value|
#     puts "#{students}"
# end

#Kiễm tra Key và value có trong hash
# puts students.has_key?(:Diem)
# puts students.has_value?("20")
#
# #Merge thêm 1 hash vào hash hiện có
# thongTinThem = {SoThich:"Doc Sach" , HocLuc:"Kha"}
# tatcathongtin = students.merge(thongTinThem)
# puts "#{tatcathongtin}"
#
# #Đếm số lần xuất hiện từ trong câu
# def dem_tu (str)
#     tu = str.downcase.split(" ")
#     soLanLap = Hash.new(0)
#     tu.each {|tu| soLanLap[tu] +=1 }
#     return soLanLap
# end
# puts dem_tu("Hom Nay An Gi? Hom Nay Toi An Bun Rieu")

#tạo 1 hash class lưu học sinh và số lượng học sinh
def input_students()
    n_students = 0
    while n_students <= 0
        puts "Nhập Số Lượng Học Sinh"
        n_students = gets.chomp.to_i
    end
    students = {}
    n_students.times do |i|
        puts "Nhập học sinh thứ #{i+1}"
        puts "Tên"
        name = gets.chomp
        puts "Điểm"
        scores = gets.chomp.to_f
        puts "Học Lực"
        degree = gets.chomp
        students[name] = {scores: scores ,degree: degree }
    end
    class_info = {number_studen: n_students, students: students}
    return class_info
end
class_info = input_students()
students = class_info[:students]
puts"Danh Sách Học Sinh"
students.each do |name, info|
  puts "Tên: #{name}"
  puts "Điểm: #{info[:scores]}"
  puts "Học Lực: #{info[:degree]}"
end
puts students