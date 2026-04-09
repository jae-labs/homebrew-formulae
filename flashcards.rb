class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.6'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.6/flashcards-darwin-arm64"
      sha256 '1cf76990cac2bd20afbdcd5c3fd715bd8ea01ddd39929057ec26e2492494c185'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.6/flashcards-darwin-amd64"
      sha256 '95369fc1f4bdd7a9167bc345bdcf20ea83a2a3b74a6a2ba824c20adf917760cf'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
