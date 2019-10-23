class Weather <Formula

  HOMEBREW_WEATHER_VERSION="0.9.6"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "abbf0bf690422a446a274bee35ae173348c54376b7b0e403210ea769f08ab652"
  version HOMEBREW_WEATHER_VERSION
  option "URL=", "表示させたい地域のURL"

  def install
  
    myurl = ARGV.value("URL")
    if myurl == nil then
      myurl = "https://www.accuweather.com/en/jp/koto-ku/221230/weather-forecast/221230"
    end
    system("perl -pi -e 's*MY_WEATHER_URL*#{myurl}*g' w_*")
  
    bin.install Dir['*']
  end

  test do
    system "false"
  end
end
