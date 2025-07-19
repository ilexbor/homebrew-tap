class Ignorium < Formula
  desc "CLI tool for automatic .gitignore generation based on technologies detected in the target directory"
  homepage "https://github.com/ilexbor/ignorium"
  url "https://github.com/ilexbor/ignorium/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "31aa84791f5071bd508c444358a9ea34c55b8b55b0dd06df10437e45a7ec4b8f"
  license "BSD-3-Clause"

  depends_on "dart" => ">=3.0.0"

  def install
    system "dart", "pub", "get"
    system "dart", "compile", "exe", "bin/ignorium.dart", "-o", "ignorium"
    bin.install "ignorium"
  end

  test do
    system "#{bin}/ignorium", "--help"
  end
end