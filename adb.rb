class Tellme < Formula
  desc "a cli tool to get information."
  homepage "https://github.com/idoubi/tellme"
  url "https://github.com/idoubi/tellme/archive/v0.1.0.tar.gz"
  sha256 "b0c14c0e9f02e065917262a7c0d16e205097cc4d10c01e03ad93b4cd737cf81d"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"tellme"
  end

  test do
    system "false"
  end
end
