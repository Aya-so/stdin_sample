input_lines = readlines
# 標準入力を複数行で受け取る＝readlinesを使用

room = input_lines[0].to_i
# input_linesの0番目の要素に室内温度の値を格納
#.to_iにより数値変換

air_conditioner = input_lines[1].to_i
# input_linesの1番目の要素に設定温度の値を格納

temperature_diff = (room - air_conditioner).abs
#室内温度と設定温度の差異
#.abs=絶対値に変換するメソッド

require_time = 0
#時間用の変数を初期化（初期値で0を代入)

if temperature_diff < 5 #5未満
    require_time = 15
elsif temperature_diff > 4 && temperature_diff < 10 then #5以上10未満
    require_time = 30
elsif temperature_diff > 10  then #10以上
    require_time = 60
end

p require_time
#出力