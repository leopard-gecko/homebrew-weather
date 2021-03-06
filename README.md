# Weather
`w_now`&nbsp; 現在の天気を表示  
`w_hour` 時間単位の天気予報を表示  
`w_week` 週間天気予報を表示  

# 事前準備

まず https://www.accuweather.com/en/jp/japan-weather にアクセスし、自分が表示したい地域を検索してそのURLを保存しておく。日本語表示にしたい場合は/en/を/ja/に変更する。  
続いて、使用しているシェルの環境変数として~/.zshrcや~/.bashrcなどに以下のように記述する。https:〜の部分は、先ほど保存しておいたURLを記載する。

`export WEATHER_URL='https://www.accuweather.com/en/jp/koto-ku/221230/weather-forecast/221230'`

# インストール

$ `brew tap leopard-gecko/weather`  
$ `brew install weather`  

# 各コマンドの使い方:
`w_now [-s | -c | -d | -n | -t | -h] [-l 言語]`  

説明:  
&nbsp;&nbsp;現在の天気予報  
  
オプション:  
&nbsp;&nbsp;-s  天気と降水確率のみ表示  （Simple）  
&nbsp;&nbsp;-c  現在の天気を表示       （Current）  
&nbsp;&nbsp;-d  日中の天気を表示       （Day）  
&nbsp;&nbsp;-n  夜間の天気を表示       （Night）  
&nbsp;&nbsp;-t  明日の天気を表示       （Tomorrow）  
&nbsp;&nbsp;-h  ヘルプ  
&nbsp;&nbsp;-l  表示言語（ja:日本語、en:English、fr:Français、de:Deutsch、zh-cn:中文 (SIM)など）  
<br />
`w_hour [-n 数値] [-a 数値] [-s 数値] [-h] [-l 言語]`  

説明:  
&nbsp;&nbsp;時間単位の天気予報  

オプション:  
&nbsp;&nbsp;-n    何時間分を表示するかの数値  
&nbsp;&nbsp;-a    何時間後から表示するかの数値  
&nbsp;&nbsp;-s    何時間おきに表示するかの数値  
&nbsp;&nbsp;-h    ヘルプ  
&nbsp;&nbsp;-l    表示言語（ja:日本語、en:English、fr:Français、de:Deutsch、zh-cn:中文 (SIM)など）  
<br />
`w_week [-n 数値] [-a 数値] [-e | -h] [-l 言語]`  

説明:  
&nbsp;&nbsp;週間天気予報  

オプション:  
&nbsp;&nbsp;-n    何日分を表示するかの数値  
&nbsp;&nbsp;-a    何日後から表示するかの数値  
&nbsp;&nbsp;-e    週末の予報だけ表示する  
&nbsp;&nbsp;-h    ヘルプ  
&nbsp;&nbsp;-l    表示言語（ja:日本語、en:English、fr:Français、de:Deutsch、zh-cn:中文 (SIM)など）  
        
