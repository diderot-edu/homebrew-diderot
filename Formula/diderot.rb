# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Diderot < Formula
  desc "Diderot Compiler"
  homepage "https://github.com/diderot-edu/diderot-guide/"
  url "https://diderot-dist.s3.amazonaws.com/dc-macos-0.16.6.zip"
  sha256 "1254c226ed007c73522c30a70223ce1144205f736772b25b64ed2c93c75d394b"

  depends_on "pandoc"

  def install
    bin.install "dc"
  end

  test do
    # we should eventually do a real test here
    system "dc --help"
  end
end
