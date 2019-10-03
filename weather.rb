class Weather <Formula

  HOMEBREW_WEATHER_VERSION="0.9.0"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "74464c392cdb23454bb1a651a5f59f8368713a6ec924aa937874c2f6ec17f2a8"
  version HOMEBREW_WEATHER_VERSION
  option "URL=", "表示させたい地域のURL"

  def install
  
    myurl = ARGV.value("URL")
    if myurl == nil then
      myurl = "https://www.accuweather.com/en/jp/koto-ku/221230/weather-forecast/221230"
    end
    system("perl -pi -e 's*MY_WEATHER_URL*#{myurl}*g' w_*)
  
    bin.install Dir['*']
  end

  test do
    system "false"
  end
end
