class Weather <Formula

  HOMEBREW_WEATHER_VERSION="1.0.8"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "b2c70e04247a32c3968c5c44782f0ef3d915f4bd754c8a6919172e140c7fba9a"
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
