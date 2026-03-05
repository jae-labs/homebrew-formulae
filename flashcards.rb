class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.5'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.5/flashcards-darwin-arm64"
      sha256 'fc023b1e750cb24048bcd7887e15e91a34a18a0a03816446b37b8732c3ddf8b5'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.5/flashcards-darwin-amd64"
      sha256 '760dade42838dbaeb8674d2cd4a1a432ceec1b1278df40bb2921dd2e23befb31'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
