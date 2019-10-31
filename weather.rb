class Weather <Formula

  HOMEBREW_WEATHER_VERSION="1.0.0"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "465e12f40489154cb9fbcdddef422484e50ea806d6ef7f91716b71965e88d53a"
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
