require "formula"

class BuckarooAT302 < Formula

  @@version = "3.0.2"

  homepage "https://buckaroo.pm"

  if OS.mac?
    url "https://github.com/LoopPerfect/buckaroo/releases/download/v" + @@version + "/buckaroo-macos"
    sha256 "418f4afa74b9d9ba8e13983bb98ae190a7f46acc509a420a2459c85f0965498b"
  elsif OS.linux?
    url "https://github.com/LoopPerfect/buckaroo/releases/download/v" + @@version + "/buckaroo-linux"
    sha256 "bcdb6e07bc3d9e2f84f1eb100c7bc9fa630f770eb230aa4f4b772c1b1492dcde"
  end

  def install
    if OS.mac?
      libexec.install "buckaroo-macos"
      bin.install libexec/"buckaroo-macos" => "buckaroo"
    elsif OS.linux?
      libexec.install "buckaroo-linux"
      bin.install libexec/"buckaroo-linux" => "buckaroo"
    end
  end

  def caveats
    "Anonymous usage statistics are enabled by default. \n" \
    "For more information and instructions for disabling analytics, visit: \n" \
    "https://github.com/LoopPerfect/buckaroo"
  end

end
