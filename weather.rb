class Weather <Formula

  HOMEBREW_WEATHER_VERSION="1.1.1"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "e459ecf8bc69cbe163a9957ddd8c13a8488bf98850bd2002f5ab66261cd1ddcd"
  version HOMEBREW_WEATHER_VERSION

  def install
  
     myurl = "https://www.accuweather.com/en/jp/koto-ku/221230/weather-forecast/221230"
    system("perl -pi -e 's*MY_WEATHER_URL*#{myurl}*g' w_*")
  
    bin.install Dir['*']
  end

  test do
    system "false"
  end
end
