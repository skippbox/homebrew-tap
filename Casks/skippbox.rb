cask 'skippbox' do
  name 'Skippbox'
  version '0.0.1'
  homepage 'https://skippbox.com'
  license :apache

  if Hardware::CPU.is_64_bit?
    url "https://github.com/skippbox/skippbox/releases/download/v0.0.1/osx64.tar.gz"
    sha256 'ca2be4e3b088cf41fef88c0ffa8e7ccc4b4321f31f9017833412e4e33dc2db3c'
    path = 'osx64'
  else
    url "https://github.com/skippbox/skippbox/releases/download/v0.0.1/osx32.tar.gz"
    sha256 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
    path = 'osx32'
  end

  app "#{path}/skippbox.app"
end
