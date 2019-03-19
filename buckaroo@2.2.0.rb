require "formula"

class BuckarooAT220 < Formula

  @@version = "2.2.0"

  homepage "https://buckaroo.pm"

  if OS.mac?
    url "https://github.com/LoopPerfect/buckaroo/releases/download/v" + @@version + "/buckaroo-macos"
    sha256 "4b81872b58d3aec5a95b0763b51d85a114f5bdff3dfe985cd72bf6e18bfe1ff1"
  elsif OS.linux?
    url "https://github.com/LoopPerfect/buckaroo/releases/download/v" + @@version + "/buckaroo-linux"
    sha256 "23f9a4145a3e51f1205a4b265374c548fc4a4e9156e5121285f5c5bdb4d3228c"
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
