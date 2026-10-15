class Flashcards < Formula
  desc 'Flashcards - AI-powered flashcards CLI'
  homepage 'https://github.com/jae-labs/flashcards'
  version 'v0.0.15'
  license 'MIT'

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.15/flashcards-darwin-arm64"
      sha256 'a9d291ae11e8e87b3407ee2be29b9ae7c840fe01dcccdb1b4422a4535a956909'
    elsif Hardware::CPU.intel?
      url "https://github.com/jae-labs/flashcards/releases/download/v0.0.15/flashcards-darwin-amd64"
      sha256 '621ff067e99f91fd5a07108c9863e80d34d3f335304d3986154ac3f60bc3b65d'
    end
  end

  def install
    bin.install Dir['flashcards-*'].first => 'flashcards'
  end

  test do
    system "#{bin}/flashcards", '--version'
  end
end
