class Catv < Formula
  desc "Cards Against the Void - AI-powered flashcards CLI"
  homepage "https://github.com/luiz1361/catv"
  version "v0.0.3"
  license "MIT"

  if OS.mac?
    url "https://github.com/luiz1361/catv/releases/download/v0.0.3/catv-darwin-arm64"
    sha256 "a9ecf69c7b4f2587fade87130ef43e01639002021f5f777a650da039bdc39024"
  end

  def install
    # Rename the binary during install
    bin.install Dir["catv-*"].first => "catv"
  end
  
  test do
    system "#{bin}/catv", "--version"
  end
end