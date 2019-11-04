require "language/node"

class Kmdr < Formula
  desc "The ultimate CLI learning tool"
  homepage "https://kmdr.sh/"
  url "https://registry.npmjs.org/kmdr/-/kmdr-0.2.4.tgz"
  sha256 "f3c277d0106c3d300c9dc755799f6185f9a21670b026e598e71cecfee0070a3e"
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented"
  end
end