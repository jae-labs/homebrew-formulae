class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.7'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.7/flashcards-darwin-arm64"
      sha256 'ad0606bd2205b2b285302be9cb9d37a1f7ab6e99659ccdae8de8b5abca52c3b3'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.7/flashcards-darwin-amd64"
      sha256 '1058c84f0bc21070b4faa2e00b03ea91c239bde49fb187d9eea332fa1770179b'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
