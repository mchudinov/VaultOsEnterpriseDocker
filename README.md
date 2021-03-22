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

3. Access Vaults

From web browser:

Open source http://localhost:8201

Eterprise   http://localhost:8202
