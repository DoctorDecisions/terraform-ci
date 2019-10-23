# Atlantis 0.9 and Terraform 12.10
FROM runatlantis/atlantis@sha256:7864df926d9d2269b30f80765f153cc71d65e17b4fd6d35cf5c2ef5d02d9a1d0

RUN apk add --no-cache python3

RUN curl -o /usr/local/bin/terragrunt -L https://github.com/gruntwork-io/terragrunt/releases/download/v0.20.4/terragrunt_linux_amd64 && \
    chmod +x /usr/local/bin/terragrunt

RUN curl -o vault.zip https://releases.hashicorp.com/vault/1.2.3/vault_1.2.3_linux_amd64.zip && \
unzip vault.zip -d /usr/local/bin && \
chmod +x /usr/local/bin/vault && \
rm -f vault.zip

COPY repos.yaml ./

CMD ["server", "--automerge", "--repo-config=./repos.yaml"]