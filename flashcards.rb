class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.1'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.1/flashcards-darwin-arm64"
      sha256 '349761b2293d3da47fc1205c7d458bbb48e2780074ac9fd420e6db6f83f80bf9'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.1/flashcards-darwin-amd64"
      sha256 '7de3daf52a471dcde09d1c0511e164dcb242b3afbf03aa837b2f5ef4aac32388'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
