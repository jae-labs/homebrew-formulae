class Catv < Formula
  desc "Cards Against the Void - AI-powered flashcards CLI"
  homepage "https://github.com/luiz1361/catv"
  version "v0.0.4"
  license "MIT"

  if OS.mac?
    url "https://github.com/luiz1361/catv/releases/download/v0.0.4/catv-darwin-arm64"
    sha256 "37e9f19643a33f9ff087519cd4fea458413765789fca023f6ba5ebe13ad78ea3"
  end

  def install
    # Rename the binary during install
    bin.install Dir["catv-*"].first => "catv"
  end
  
  test do
    system "#{bin}/catv", "--version"
  end
end