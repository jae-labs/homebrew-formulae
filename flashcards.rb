class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.4'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.4/flashcards-darwin-arm64"
      sha256 'c7468d4836e5ff5647b71cb0929bb4187d55f9ace2b7f369a6021e32685c9dea'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.4/flashcards-darwin-amd64"
      sha256 '277b33c4a1fe88334b7c4764444c8f5e6bf90014d8d987cb752abd91d3ffde34'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
