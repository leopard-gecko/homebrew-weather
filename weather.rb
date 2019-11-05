class Weather <Formula

  HOMEBREW_WEATHER_VERSION="1.0.1"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "22622a7caf0e64082569cb6720a498e998ebf214764c2dcb179972c2b49a0a2c"
  version HOMEBREW_WEATHER_VERSION
  option "URL=", "表示させたい地域のURL"

  def install
  
    myurl = ARGV.value("URL")
    if myurl == nil or myurl == "" then
      myurl = "https://www.accuweather.com/en/jp/koto-ku/221230/weather-forecast/221230"
    end
    system("perl -pi -e 's*MY_WEATHER_URL*#{myurl}*g' w_*")
  
    bin.install Dir['*']
  end

  test do
    system "false"
  end
end
