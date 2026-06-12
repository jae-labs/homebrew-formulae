class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.1'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.1/flashcards-darwin-arm64"
      sha256 '12491fab7cb52b467f660cbf68203337bc7e41f004091f4c288196fa3a02f1e5'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.1/flashcards-darwin-amd64"
      sha256 'd91e4a3e0574f68e260a1aa857ddf15823e45d306c087db1a52018173a4d1116'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
