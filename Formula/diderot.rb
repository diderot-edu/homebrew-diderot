# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Diderot < Formula
  desc "Diderot Compiler"
  homepage "https://github.com/diderot-edu/diderot-guide/"

  # The next 2 lines need to change whenever we upload a new version of dc
  url "https://diderot-dist.s3.amazonaws.com/dc-macos-0.16.7.zip"
  sha256 "49532efe3b258e9718cb4305740d7c112c0652fab413ca9e47a70999f4511526"

  depends_on "pandoc"

  def install
    bin.install "dc"
    bin.install "texel"
  end

  test do
    # we should eventually do a real test here
    system "dc --help"
  end
end
