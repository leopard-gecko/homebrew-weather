# weather
`w_now`  現在の天気を表示  
`w_hour` 時間単位の天気予報を表示  
`w_week` 週間天気予報を表示  

# インストール

$ `brew tap leopard-gecko/weather`  
$ `brew install weather --URL=https://www.accuweather.com/en/jp/koto-ku/221230/weather-forecast/221230`  

(まず https://www.accuweather.com/en/jp/japan-weather にアクセスし、URLを自分が表示したい地域を検索して適宜変更する。日本語表示にしたい場合は/en/を/ja/に変更する。)

# 各コマンドの使い方:
`w_now [-s | -c | -d | -n | -t | -h] [-l 言語]`  

説明:  
  現在の天気予報  
  
オプション:  
  -s    天気と降水確率のみ表示  （Simple）  
  -c    現在の天気を表示       （Current）  
  -d    日中の天気を表示       （Day）  
  -n    夜間の天気を表示       （Night）  
  -t    明日の天気を表示       （Tomorrow）  
  -h    ヘルプ  
  -l    表示言語  
        （ja:日本語、en:English、fr:Français、de:Deutsch、zh-cn:中文 (SIM)など）  
        
        
`w_hour [-n 数値] [-a 数値] [-s 数値] [-h] [-l 言語]`  

説明:  
  時間単位の天気予報  

オプション:  
  -n    何時間分を表示するかの数値  
  -a    何時間後から表示するかの数値  
  -s    何時間おきに表示するかの数値  
  -h    ヘルプ  
  -l    表示言語  
        （ja:日本語、en:English、fr:Français、de:Deutsch、zh-cn:中文 (SIM)など）  
        
        
`w_week [-n 数値] [-a 数値] [-e | -h] [-l 言語]`  

説明:  
  週間天気予報  

オプション:  
  -n    何日分を表示するかの数値  
  -a    何日後から表示するかの数値  
  -e    週末の予報だけ表示する  
  -h    ヘルプ  
  -l    表示言語  
        （ja:日本語、en:English、fr:Français、de:Deutsch、zh-cn:中文 (SIM)など）  
        
