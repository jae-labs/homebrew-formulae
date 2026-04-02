class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.5'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.5/flashcards-darwin-arm64"
      sha256 'aa9a4625bc63fa0fde6e945cc01e4d4ee04e1f9c8246c67f3840a7fb69ff49c2'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.5/flashcards-darwin-amd64"
      sha256 '97b2f7c1639aa15a9455831f7aa41b9ba3e055b93c921ada80eab0d491c3529a'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
