require 'formula'

class Buckaroo < Formula
  homepage 'https://github.com/loopperfect/buckaroo'
  head 'https://github.com/LoopPerfect/buckaroo.git', :using => :git
  depends_on :java => "1.8+"
  depends_on 'buck'
  def install
    system 'buck', 'build', ':buckaroo-cli'
    libexec.install Dir["buck-out/gen/*"]
    bin.write_jar_script libexec + "buckaroo-cli.jar", "buckaroo"
  end
  def caveats
    "Anonymous usage statistics are enabled by default. \n" +
    "For more information and instructions for disabling analytics, visit: \n" +
    "https://buckaroo.readthedocs.io/"
  end
end
