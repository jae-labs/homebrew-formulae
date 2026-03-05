class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.1'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.1/flashcards-darwin-arm64"
      sha256 'b86ee20cfb2267fc60c13e50187de7bd329e3c334e73f9bacc8ed2f4d21188af'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.1/flashcards-darwin-amd64"
      sha256 '8f0433bc376aac5f448414ccd0f3d7f4d54158858252d5a510c6f35df1958149'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
