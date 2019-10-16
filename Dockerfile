# Atlantis 0.9 and Terraform 12.10
FROM runatlantis/atlantis@sha256:7864df926d9d2269b30f80765f153cc71d65e17b4fd6d35cf5c2ef5d02d9a1d0

RUN curl -o /usr/local/bin/terragrunt -L https://github.com/gruntwork-io/terragrunt/releases/download/v0.20.4/terragrunt_linux_amd64 && \
    chmod +x /usr/local/bin/terragrunt