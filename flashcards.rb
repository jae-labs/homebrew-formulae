class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.3'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.3/flashcards-darwin-arm64"
      sha256 '63f2e189fb9b404e2f0aedae8ecd44ed614cbe3e4d18d92979bbd5de4adaa321'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.3/flashcards-darwin-amd64"
      sha256 '7984429054b2421cc989a1f2b98c6c0e05f7a32dd961116e3881af9267f6e218'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
