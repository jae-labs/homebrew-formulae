class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.8'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.8/flashcards-darwin-arm64"
      sha256 '0a1739190675623cdcc616f0354423912518c8f315d583808a85bd305239c6d6'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.8/flashcards-darwin-amd64"
      sha256 '3c90fd51797e42cf35b604d978de85d343c4c6842745fbb80dec7638054a0824'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
