class Weather <Formula

  HOMEBREW_WEATHER_VERSION="1.1.0"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "a4343b439f7fe05448142afac5f20dbfdf48e33c1863283460a50b5dc3148c00"
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
