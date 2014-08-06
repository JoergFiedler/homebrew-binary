require "formula"

class Terraform < Formula
  homepage "http://www.terraform.io"
  url "http://dl.bintray.com/mitchellh/terraform/terraform_0.1.1_darwin_amd64.zip"
  version '0.1.1'
  sha256 "1387eca09fcad8571f02d2f34b79d7cff5f420da8cc52e9b0841696461c99b38"

  def install
    bin.install %w[
      terraform terraform-provider-aws
      terraform-provider-consul
      terraform-provider-digitalocean
      terraform-provider-dnsimple
      terraform-provider-heroku
      terraform-provisioner-file
      terraform-provisioner-local-exec
      terraform-provisioner-remote-exec]
  end

  test do
    system "#{bin}/terraform", "version"
  end
end

