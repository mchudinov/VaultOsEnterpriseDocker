Running Hashicorp Vault Opensource and Enterprise side by side in Docker Compose
## How to run

1. Build and start
```sh
docker-compose build
docker-compose up -d 
```

2. Catch Vault Root Token from log
```sh
docker logs vault
```

For example:
```
Unseal Key: VHfyFVqbnUjuR9Tos4ZsyqWopB8uuVwGRB5AHqaQAtQ=
Root Token: s.tFp756DA6NQ7DfCLdkGOgKqU
```

4. Activate Enterprise license

Request 30-days trial license from Hashicorp here
https://www.hashicorp.com/products/vault/trial

```sh
vault write sys/license text=0123abc....
```

3. Access Vaults from web browser

From web browser:

Open source http://localhost:8201

Eterprise   http://localhost:8202

4. Access vautl from command line

For OS Vault
```sh
export VAULT_ADDR="http://localhost:8201"
vault login
```

5. Activate KV engine