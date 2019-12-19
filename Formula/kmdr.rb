require "language/node"

class Kmdr < Formula
  desc "The ultimate CLI learning tool"
  homepage "https://kmdr.sh/"
  url "https://registry.npmjs.org/kmdr/-/kmdr-0.4.0.tgz"
  sha256 "6dae95f8d000a0be0f30b68e8a1dbedb081f54f71d29264453782832bd1dbf70"
  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented"
  end
end
