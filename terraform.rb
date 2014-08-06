require "formula"

class Terraform < Formula
  homepage "http://www.terraform.io"
  url "http://dl.bintray.com/mitchellh/terraform/terraform_0.1.1_darwin_amd64.zip"
  version '0.1.1'
  sha256 "309aed0ed61586e2682f58b77781f8e9805745a5edd1aebcddf883c9f624a0b9"

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

