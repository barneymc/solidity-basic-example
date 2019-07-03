# Solidity basic example

This project aims to help blockchain enthusiasts who want to start developing smart contracts with solidity.
It provides a simple example of a solidity project developed using truffle framework and a web user interface to interact with it.

**Important:** this is only suitable for a development or learning enviorment.

## Getting Started

To get a copy of the project simply clone this reposiroty in any location you want. 

### Prerequisites

To run this example, you need to install truffle framework, ganache GUI and Metamask plugin.
Info on how to install these tools can be found in their home pages (links provided *Tools* section)
Note that web3.js is already provided when you clone the project.

### Deploy your contract

After installing all the needed tools, you should first run Ganache GUI and configure a network by clicking on the *NEW WORKSPACE* button. 
There enter your network name, and add your truffle project. It will be located in: 

> your-project-dir/solidity-basic-example/truffle-config.js

Then change the port number to 8545 under server section. Everything else doesn't need to be changed, so press *SAVE WORKSPACE* and you will start running your local blockchain! 

Now the network is running but there is nothing deployed on it, so for the next step open a terminal in the directory

> your-project-dir/solidity-basic-example/

And run 

```
truffle migrate
```

It should give you an output like this

```
Starting migrations...
======================
> Network name:    'development'
> Network id:      5777
> Block gas limit: 6721975


1_initial_migration.js
======================

   Deploying 'Migrations'
   ----------------------
   > transaction hash:    0xea09686c935114a2b0dcd86e865b3717be0681f283f1d08ae29b0feecee57cb6
   > Blocks: 0            Seconds: 0
   > contract address:    0xC96Be1aac537730DcCFcb547Ad53ed40B7525EA8
   > account:             0xd11AC1edc52B6df0e683740b1BdE1EdCb916abb8
   > balance:             99.979901629
   > gas used:            284908
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00569816 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00569816 ETH


2_SimpleStorage_migration.js
============================

   Replacing 'SimpleStorage'
   -------------------------
   > transaction hash:    0x37415792f6b3311ee9b8ea61b05c4ee8aebb4f1c35696cc03a6ebf2311111165
   > Blocks: 0            Seconds: 0
   > contract address:    0x646F9CB369a303d8B83DA72dA0115550b9601685
   > account:             0xd11AC1edc52B6df0e683740b1BdE1EdCb916abb8
   > balance:             99.974827209
   > gas used:            253721
   > gas price:           20 gwei
   > value sent:          0 ETH
   > total cost:          0.00507442 ETH

   > Saving artifacts
   -------------------------------------
   > Total cost:          0.00507442 ETH


Summary
=======
> Total deployments:   2
> Final cost:          0.01077258 ETH

```

A lot of info is displayed, like the account from with the contract was deployed, its balance, transaction cost, etc. You can explore all of this and more using Ganache GUI. 

### Using the frontend

Now that your contract is deployed, you can start using the frontend. 
For this, you should use an http server to correctly interact with Metamask plugin. I recommend using python http.server module for its simplicity, but use your preferred one. 
To use python server, simply run this under *your-project-dir/solidity-basic-example/frontend webjs 1.0* directory

```
python -m http.server
```


Then just import Ganache GUI first account to Metamask by copying its private key and select *localhost:8545* as network.
With that you should see the same balance both in Metamask and Ganache. 
Once you accomplish you can start storing and retreiving data from the Blockchain.


## Tools

* [Truffle](https://github.com/trufflesuite/truffle)
* [Ganache GUI](https://www.trufflesuite.com/ganache)
* [Metamask](https://metamask.io/)
* [web3js](https://github.com/ethereum/web3.js/)

## Authors

* **Santiago Bianco** - (https://github.com/santibianco - https://www.linkedin.com/in/santiago-bianco)



