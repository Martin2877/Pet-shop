# Pet-shop 注释版

Author : Ali0th

相信大家入手第一个DApp部署就是Pet-shop，本源码对其中关键脚本做了详细注解。

## How to Start

请先安装npm/Node/truffle/ganache

```bash
git clone git@github.com:Martin2877/Pet-shop.git
cd Pet-shop
ganache-cli -p 7545 & # 后台启动ganache # 建议在另一个console里运行
truffle compile # 解析
truffle migrate --network development # 迁移
npm run dev # 启动web服务
```

访问`localhost:3000`即可。

## Files

其中，关键文件为：

> contracts/Adoption.sol
>
> migrations/2_deploy_contracts.js
>
> src/app.js
>
> test/TestAdoption.sol

```bash
Pet-shop
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
│  │  index.html # 前端首页
│  │  pets.json
│  ├─css
│  ├─fonts
│  ├─images
│  └─js
│          app.js # 前端交互脚本
│          bootstrap.min.js
│          truffle-contract.js
│          web3.min.js
│
└─test
        .gitkeep
        TestAdoption.sol # 合约函数测试脚本
```