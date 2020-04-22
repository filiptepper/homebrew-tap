class TerraformLsp < Formula
  desc "Language Server Protocol for Terraform"
  homepage "https://github.com/juliosueiras/terraform-lsp"

  url "https://github.com/juliosueiras/terraform-lsp/releases/download/v0.0.11-beta1/terraform-lsp_0.0.11-beta1_darwin_amd64.tar.gz"
  sha256 "a72d71774ae50205740254f0b0a5f8822ce86f3bea5af75a38eba833c87cfff4"


  def install
    bin.install "terraform-lsp" => "terraform-lsp"
  end

  test do
    output = shell_output("#{bin}/#{TARGET_NAME} -h 2>&1")
    assert_match /Usage of terraform-lsp:/, output
  end
end
