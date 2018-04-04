# Pet-shop 注释版

Author : Ali0th

相信大家入手第一个DApp部署就是Pet-shop，本源码对其中关键脚本做了详细注解。

其中，关键文件为：
> contracts/Adoption.sol
> migrations/2_deploy_contracts.js
> src/app.js
> test/TestAdoption.sol

```bash

│  bs-config.json # 基础配置
│  package-lock.json
│  package.json
│  truffle.js # truffle 配置
│
├─build
│  └─contracts # 智能合约
│          Adoption.json
│          Migrations.json
│
├─contracts # 智能合约脚本
│      .gitkeep
│      Adoption.sol
│      Migrations.sol
│
├─migrations
│      1_initial_migration.js
│      2_deploy_contracts.js
│
├─node_modules
│
├─src # 网站源码
│  │  index.html
│  │  pets.json
│  ├─css
│  ├─fonts
│  ├─images
│  └─js
│          app.js
│          bootstrap.min.js
│          truffle-contract.js
│          web3.min.js
│
└─test
        .gitkeep
        TestAdoption.sol
```