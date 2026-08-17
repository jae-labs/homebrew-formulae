class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.7'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.7/flashcards-darwin-arm64"
      sha256 '474abdf089e6775daf296db555b8f23274fe7cbddbb8a66f29e1dd0dd46b209d'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.7/flashcards-darwin-amd64"
      sha256 '0234d86842f847d0f1bb763f1eae73f2373c2b87d7d5ef1e7b3a374333b03652'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
