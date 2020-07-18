class Weather <Formula

  HOMEBREW_WEATHER_VERSION="1.1.1"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "097635deaaa4cdb6dbfbc718f5687a7c6e20d9f6cd943976f8ec75f3a797c7c8"
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
