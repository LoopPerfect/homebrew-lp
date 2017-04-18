require 'formula'
 
class Buckaroo < Formula
  homepage 'https://github.com/loopperfect/buckaroo'
  head 'git@github.com:loopperfect/buckaroo.git', :using => :git
  depends_on :java => "1.8+"
  depends_on 'buck'
  def install
    system 'buck', 'build', ':buckaroo-cli'
    libexec.install Dir["buck-out/gen/*"]
    bin.write_jar_script libexec + "buckaroo-cli.jar", "buckaroo"
  end
end
