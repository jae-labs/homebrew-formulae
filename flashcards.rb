class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.7'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.7/flashcards-darwin-arm64"
      sha256 '5046fee69edb0926c60f923ce1147f7d9ef88174d239f377fec99ac0aef681c9'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.7/flashcards-darwin-amd64"
      sha256 '5b4e52fd3962d1aa279c94f5f310e0a683b444be1761b5ab30ff3f30062d08b1'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
