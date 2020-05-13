# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Diderot < Formula
  desc "Diderot Compiler"
  homepage "https://github.com/diderot-edu/diderot-guide/"

  # The next 2 lines need to change whenever we upload a new version of dc
  url "https://diderot-dist.s3.amazonaws.com/dc-macos-0.16.6.zip"
  sha256 "56bf36b83db5316aace7fbd7c09d6766b41cadde8404f12596a1e640fbdd8188"

  depends_on "pandoc"

  def install
    bin.install "dc"
  end

  test do
    # we should eventually do a real test here
    system "dc --help"
  end
end
