# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Demo < Formula
  desc "Airdb Development Builder"
  homepage "https://github.com/airdb/homebrew-taps"
  version "2.0.0"
  #url "https://github.com/airdb/adb/releases/latest/download/adb-darwin-amd64.zip"
  #url "file:///opt/src/github.com/airdb/config"
  url "file:///tmp/config.tgz"

  # depends_on "cmake" => :build

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test adb`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end

  def install
    system "echo", "start install ===="
    #bin.install "/opt/src/github.com/airdb/config/bar/bug.sh" 
    system "mkdir -p /tmp/hello "
    system "cp /opt/src/github.com/airdb/config/bar/bug.sh /tmp/hello"
    system "make vim"
    bin.install "bar/bug.sh"
  end


  def post_install
    system "echo", "post install ======"
    #rm_f pkgetc/"cert.pem"
    #pkgetc.install_symlink Formula["ca-certificates"].pkgetc/"cert.pem"
  end
end
