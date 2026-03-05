class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.2'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.2/flashcards-darwin-arm64"
      sha256 '4ee74e11490029e7710102afccd7b1e680ec9625930bacd88a34fb0b544ac002'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.2/flashcards-darwin-amd64"
      sha256 'fa76fb743e7e0b5c483e41f5e0ffa31ab06e8116633adfd8ac0faece5365ccab'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
