class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.6'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.6/flashcards-darwin-arm64"
      sha256 '33bc25049befde983b5cff6d66731223248119380c3c640762249cb6cd29f8bb'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.6/flashcards-darwin-amd64"
      sha256 '3d4e7bb476d9192458d3a72c86e9a1ca4e489b3e67174aa93f4f00d1628565fb'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
