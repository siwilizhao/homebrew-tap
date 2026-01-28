# typed: false
# frozen_string_literal: true

class SiwiDownload < Formula
  desc "Downloader with pure HTTP implementation supporting breakpoint continuation"
  homepage "https://github.com/rs-videos/siwi-download"
  url "https://github.com/rs-videos/siwi-download.git", tag: "v1.0.0", revision: "c19327ad5a1d4e234e1aee7343ac83af5e1be527"
  license "MIT"
  version "1.0.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--root", prefix, "--path", "."
  end

  test do
    system "#{bin}/siwi-download", "--version"
  end
end
