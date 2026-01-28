# typed: false
# frozen_string_literal: true

class SiwiDownload < Formula
  desc "Downloader with pure HTTP implementation supporting breakpoint continuation"
  homepage "https://github.com/rs-videos/siwi-download"
  license "MIT"
  version "1.0.0"

  url "https://github.com/rs-videos/siwi-download/releases/download/v1.0.0/siwi-download-v1.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "dfe14c3e53cce0636f277c0ee3744b84400fb85a613ede055d2a2e8b68e710c4"

  def install
    bin.install "siwi-download"
  end

  test do
    assert_match version, shell_output("#{bin}/siwi-download --version").strip
  end
end
