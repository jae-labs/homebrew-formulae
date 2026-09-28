class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.13'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.13/flashcards-darwin-arm64"
      sha256 'd974aa2dd4aa12fb0fcfaf1665badf4112eb0f0f33cd2e05948ce8aaefe2e9b3'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.13/flashcards-darwin-amd64"
      sha256 'd80d2f5e1668a5847e10265ffd824d52f290001408708ab5f55a5c746e03e837'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
