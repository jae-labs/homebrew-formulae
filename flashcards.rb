class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.9'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.9/flashcards-darwin-arm64"
      sha256 '4ee46c2284749e457fd631bae5d6f172152a4da47469ad710d6838cdb951a982'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.9/flashcards-darwin-amd64"
      sha256 'de20af5af96d7bd022534e9d95293ad975bfc0c42e2372abd966c78761e28151'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
