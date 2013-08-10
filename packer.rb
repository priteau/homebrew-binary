require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.2.3'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.2.3_darwin_amd64.zip'
    sha1 '81d26ac205cf031b60491fb9e18e2fbac54490ee'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.2.3_darwin_386.zip'
    sha1 'af4d7a7db0208ee25a4310f1f1ea942daf0b98ef'
  end

  def install
    bin.install Dir['*']
  end
end
