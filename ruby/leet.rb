input_line = gets
# getsメソッドで標準入力を行い入力した値を変数に保持

strings = input_line.to_s.split('')
# .to_sで標準入力の値を文字列へと変換
# split('')で文字列を一文字ずつ分割して配列に格納

convert = []
# Leet文字列を格納するための配列を用意

strings.each do |chara|
  case chara
  # 比較対象が一つの場合case
  # 比較対象が複数ある場合if
  when "A" then
    convert.push("4")
  when "E" then
    convert.push("3")
  when "G" then
    convert.push("6")
  when "I" then
    convert.push("1")
  when "O" then
    convert.push("0")
  else
    convert.push(chara)
  end
end

output = convert.join
# joinメソッド=配列の要素を連結して文字列を作り出す

puts output
#連結した文字列を標準出力