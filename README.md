Running Hashicorp Vault Opensource and Enterprise side by side in Docker Compose
## How to run

Build and start
```sh
docker-compose build
docker-compose up -d 
```
## Operate Vault

### Find root token

Catch Vault Root Token from log
```sh
docker logs vault-os
docker logs vault-enterprise
```

Find in logs the token and the key, for example:
```
Unseal Key: VHfyFVqbnUjuR9Tos4ZsyqWopB8uuVwGRB5AHqaQAtQ=
Root Token: s.tFp756DA6NQ7DfCLdkGOgKqU
```

### Access Vaults

#### From inside containers
Vault variables are already imported by Docker Compose.
Just login to container and start using vault cli tool:

```sh
docker exec -it vault-os sh
docker exec -it vault-enterprse sh
vault status
```

#### From a web browser

Open source http://localhost:8201
Eterprise   http://localhost:8202

#### From command line

*vault* CLI tool must be installed.

Export *VAULT_ADDR* variabel, then login using root token.

##### Open source
```sh
export VAULT_ADDR="http://localhost:8201"
vault login
```

##### Enterprise
```sh
export VAULT_ADDR="http://localhost:8202"
vault login
```

### Activate Enterprise license

Request 30-days trial license from Hashicorp here
https://www.hashicorp.com/products/vault/trial

```sh
vault write sys/license text=0123abc....
```

### Activate KV engine
