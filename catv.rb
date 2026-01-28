class Catv < Formula
  desc "Cards Against the Void - AI-powered flashcards CLI"
  homepage "https://github.com/jae-labs/catv"
  version "v0.0.20"
  license "MIT"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/catv/releases/download/v0.0.5/catv-darwin-arm64"
      sha256 "467e6efd34c5d69e49f57068655947ac140dd0bce0fd52a2f358290c3ce35239"
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/catv/releases/download/v0.0.5/catv-darwin-amd64"
      sha256 "REPLACE_WITH_ACTUAL_SHA256_FOR_AMD_BINARY"
    end
  end

  def install
    # Rename the binary during install
    bin.install Dir["catv-*"].first => "catv"
  end

  test do
    system "#{bin}/catv", "--version"
  end
end
