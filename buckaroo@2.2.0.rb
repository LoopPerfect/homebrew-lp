require "formula"

class BuckarooAT220 < Formula

  @@version = "2.2.0"

  homepage "https://buckaroo.pm"

  url "https://github.com/LoopPerfect/buckaroo/releases/download/v" + @@version + "/buckaroo-macos"
  sha256 "4b81872b58d3aec5a95b0763b51d85a114f5bdff3dfe985cd72bf6e18bfe1ff1"

  def install
    libexec.install "buckaroo-macos"
    bin.install libexec/"buckaroo-macos" => "buckaroo"
  end

  def caveats
    "Anonymous usage statistics are enabled by default. \n" \
    "For more information and instructions for disabling analytics, visit: \n" \
    "https://github.com/LoopPerfect/buckaroo"
  end

end
