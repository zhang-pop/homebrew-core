class Fonttools < Formula
  include Language::Python::Virtualenv

  desc "Library for manipulating fonts"
  homepage "https://github.com/fonttools/fonttools"
  url "https://github.com/fonttools/fonttools/releases/download/3.35.0/fonttools-3.35.0.zip"
  sha256 "f112e19711bd544ba5201cb0beb386c39f61a829de1966a4635d82564ce2e5dd"
  head "https://github.com/fonttools/fonttools.git"

  bottle do
    cellar :any_skip_relocation
    sha256 "afc23ad35673f22b61aba060940f7a4d49c396b65ee92cfcfbd67c6c75b5d9bc" => :mojave
    sha256 "7b5e96530569b542e591d1aff80a1910109fce626538cb17f4c226c6cf9ee8cc" => :high_sierra
    sha256 "43b167b41ab5dbfc8407cf749906929c90cf734a543c3b95deea9c13857d8fa4" => :sierra
  end

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    cp "/Library/Fonts/Arial.ttf", testpath
    system bin/"ttx", "Arial.ttf"
  end
end
