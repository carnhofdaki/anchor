# anchor

There is a new type of transactions. Let's have some fun.

Mainnet: [bc1pfeessrawgf](https://mempool.space/address/bc1pfeessrawgf)
Testnet4: [tb1pfees9rn5nz](https://mempool.space/testnet4/address/tb1pfees9rn5nz)
Signet: [tb1pfees9rn5nz](https://mempool.space/signet/address/tb1pfees9rn5nz)
Testnet3: [tb1pfees9rn5nz](https://mempool.space/testnet3/address/tb1pfees9rn5nz)

## submit.sh

```sh
$ ./submit.sh
{
  "package_msg": "success",
  "tx-results": {
    "21427760a660799bf13f0ba41f8d44277646f3057970f06a394d9d3ad756a990": {
      "txid": "d8495739e579decdc90670aefd178afb47e3d08a1bf2bf5df8572b5779511c4a",
      "vsize": 126,
      "fees": {
        "base": 0.00000000,
        "effective-feerate": 0.00050000,
        "effective-includes": [
          "21427760a660799bf13f0ba41f8d44277646f3057970f06a394d9d3ad756a990",
          "8e94fbaaccf5ece97f66a7809a2b89ee1c5f0d61e83a4f33d21edf44e91111d6"
        ]
      }
    },
    "8e94fbaaccf5ece97f66a7809a2b89ee1c5f0d61e83a4f33d21edf44e91111d6": {
      "txid": "8e94fbaaccf5ece97f66a7809a2b89ee1c5f0d61e83a4f33d21edf44e91111d6",
      "vsize": 74,
      "fees": {
        "base": 0.00010000,
        "effective-feerate": 0.00050000,
        "effective-includes": [
          "21427760a660799bf13f0ba41f8d44277646f3057970f06a394d9d3ad756a990",
          "8e94fbaaccf5ece97f66a7809a2b89ee1c5f0d61e83a4f33d21edf44e91111d6"
        ]
      }
    }
  },
  "replaced-transactions": [
  ]
}
55f8e9633896787351a8215eed1b9b3b34b1e4c78a0a1d4106f9efef873a0031
b8b5c52387015ec183674969ee849f90fff083cd8c2569fb741390f7a0bf8674
b9996ee3743ea0e6241cf63bb457aa82cc321b0769303c11a126e882d61a4206
c56eff1e42b700532aa275e7b4e248835bc33b5ede38322bb9e9c21610c0f039
ebcfdab4f618cebe9c6ff9da96179c650507177b3e47179616123f9cd751df10
```
