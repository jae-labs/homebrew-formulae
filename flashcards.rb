class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.12'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.12/flashcards-darwin-arm64"
      sha256 '4986e9862e412aa70776741f0d82bbc60657e0070ddc77121d494cf18f934e80'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.12/flashcards-darwin-amd64"
      sha256 '81f5eb3d3581ca251ef430fc955dcd17ce1863afad4f9e6a7a2d3c10bf1c4c1a'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
