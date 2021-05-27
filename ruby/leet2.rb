def convert_leet(chara)
  # 条件分岐による処理をconvert_leet(chara)というメソッドにする
  case chara
  when "A" then
    "4"
  when "E" then
    "3"
  when "G" then
    "6"
  when "I" then
    "1"
  when "O" then
    "0"
  else # どれにも当てはまらないとき
    chara
  end
end

input = gets
strings = input.to_s.split('')

convert = []
strings.each do |chara|
  convert.push(convert_leet(chara))
end

output = convert.join
puts output