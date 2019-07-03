var GenerateStructure = artifacts.require("./generate.sol");

module.exports = function(deployer) {
    deployer.deploy(GenerateStructure);
};