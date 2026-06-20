class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.2'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.2/flashcards-darwin-arm64"
      sha256 '1560cdde11184d0c936c386db86513008a2f82eab444f571630bf7148f4de63e'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.2/flashcards-darwin-amd64"
      sha256 '382e42afc699e7ab41dc07655a3e65bc91a0ef8097321956ba766c56ca54f039'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
