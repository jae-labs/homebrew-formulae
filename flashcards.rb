class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.4'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.4/flashcards-darwin-arm64"
      sha256 'a09f67993c1af15c695b543e26381236cf1c4a3bcabd6569810452d47b685376'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.4/flashcards-darwin-amd64"
      sha256 '4bfb74c6b92a7119713388d256187e69d840d8302066c74616ed838accdb297f'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
