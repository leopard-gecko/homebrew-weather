class Weather <Formula

  HOMEBREW_WEATHER_VERSION="1.0.9"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "7da3ac2eed297b781530a55ebca4415956e16e2ef9b648fc234312c8bd660492"
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
