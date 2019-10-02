# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Weather <Formula

  HOMEBREW_WEATHER_VERSION="1.0.1"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "74464c392cdb23454bb1a651a5f59f8368713a6ec924aa937874c2f6ec17f2a8"
  version HOMEBREW_WEATHER_VERSION
  option "url=", "表示させたい地域のURL"

  def install
  
  str='@WEATHER_URL@';
  def replaceString(f,str)
    f.rewind;
    body = f.read;
    body = body.gsub(str) do |tmp|
    ARGV.value("url")
  end
  f.rewind;
  f.puts body;
  end
  files = Dir.glob('w_*')
  files.each do |item|
    open(item,"r+") {|f|  
      f.flock(File::LOCK_EX)
      replaceString(f,str);
      f.truncate(f.tell);
    }
  end
  
    bin.install Dir['*']
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test homebrew-weather`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
