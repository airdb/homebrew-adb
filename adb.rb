# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Adb < Formula
  desc "Airdb Development Builder"
  homepage "https://github.com/airdb/adb/releases/"
  version "1.4.0"
  #url "https://github.com/airdb/adb/releases/latest/download/adb-darwin-amd64.zip"
  url "https://github.com/airdb/adb/releases/download/v1.6.0/adb-darwin-amd64.zip"
  sha256 "2a201b67e8da0c66881f1fd54a74fb18acd1426d739af872b65e15958b7d4b60"

  # depends_on "cmake" => :build

  def install
    bin.install "adb-darwin"
    mv bin/"adb-darwin", bin/"adb"
  end

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
end
