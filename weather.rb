# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class ScriptFileFormula <Formula

  HOMEBREW_WEATHER_VERSION="1.0.0"
  
  url "https://github.com/leopard-gecko/homebrew-weather/releases/download/#{HOMEBREW_WEATHER_VERSION}/weather.zip"
  sha256 "4e7ec79b110de2bb74822388e8b36a73d794d6675906775d5ff250a09192f019"
  version HOMEBREW_WEATHER_VERSION

  def install
  
  str='@WEATHER_URL@';
  def replaceString(f,str)
    f.rewind;
    body = f.read;
    body = body.gsub(str) do |tmp|
     ARGV[0]
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
