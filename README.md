# pp-product-protos

Proto definitions for Waverider product services.

## Requirements

- [buf](https://github.com/bufbuild/buf/releases/tag/v1.50.0) v1.50.0

## Generate

```sh
./generate.sh
```

Generated Go code is written to `pb/`.

## First-time setup

```sh
go mod tidy      # populates go.sum after pb/ is generated
```

## Versioning

Releases are automated via [release-please](https://github.com/googleapis/release-please-action).
Use [conventional commits](https://www.conventionalcommits.org/) on `main`:

| Commit prefix | Version bump |
|---|---|
| `fix:` | patch — `v0.1.0` → `v0.1.1` |
| `feat:` | minor — `v0.1.0` → `v0.2.0` |
| `feat!:` or `BREAKING CHANGE:` | major — `v0.1.0` → `v1.0.0` |

On push to `main`, release-please opens a release PR. Merging it creates the Git tag and GitHub Release. Consumers then pin by tag:

```sh
go get github.com/Wave-Rider-HQ/pp-product-protos@v0.1.0
```

## Importing

```go
import (
    competitiveintelv1 "github.com/Wave-Rider-HQ/pp-product-protos/pb/competitive_intel/v1"
    commonv1           "github.com/Wave-Rider-HQ/pp-product-protos/pb/common/v1"
)
```