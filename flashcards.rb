class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.8'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.8/flashcards-darwin-arm64"
      sha256 'ecfbd4af15ccda2c6ce47c49271e76d149f3cad564ee6b912a490c7d0822bcee'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.8/flashcards-darwin-amd64"
      sha256 '8ec9e9cee43218e53ba6945096bdfb3f5e4f5747fa6c6faacefd06244e3dd947'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
