class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.1'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url 'https://github.com/jae-labs/flashcards/releases/download/v0.0.1/flashcards-darwin-arm64'
      sha256 '467e6efd34c5d69e49f57068655947ac140dd0bce0fd52a2f358290c3ce35239'
    elsif Hardware::CPU.intel?
      url 'https://github.com/jae-labs/flashcards/releases/download/v0.0.1/flashcards-darwin-amd64'
      sha256 'REPLACE_WITH_ACTUAL_SHA256_FOR_AMD_BINARY'
    end
  end

  def install
    # Rename the binary during install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
