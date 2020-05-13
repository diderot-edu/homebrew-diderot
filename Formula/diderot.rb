# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Diderot < Formula
  desc "Diderot Compiler"
  homepage "https://github.com/diderot-edu/diderot-guide/"

  # The next 2 lines need to change whenever we upload a new version of dc
  url "https://diderot-dist.s3.amazonaws.com/dc-macos-0.16.6.zip"
  sha256 "167fd72bd266644f9a1cf3a47193a58f1c2645a3e0f78eee8061a615f38a5aae"

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
