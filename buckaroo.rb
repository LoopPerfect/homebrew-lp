require 'formula'
 
class Buckaroo < Formula
  homepage 'https://github.com/njlr/buckaroo'
  head 'git@github.com:njlr/buckaroo.git', :using => :git
  depends_on :java => "1.8+"
  depends_on 'buck'
  def install
    buckconfig = File.new('.buckconfig', 'w')
    buckconfig.puts("[download]\n" + 
      "maven_repo = http://repo.maven.apache.org/maven2/\n" + 
      "in_build = true\n")
    buckconfig.close
    system 'buck', 'build', ':buckaroo-cli'
    # File.new("build/successful-build", "w") {}
    libexec.install Dir["buck-out/gen/*"]
    
    # java -jar /usr/local/Cellar/buckaroo/HEAD-645da48/gen/buckaroo-cli.jar
    bin.write_jar_script libexec + "buckaroo-cli.jar", "buckaroo"
  end
end
