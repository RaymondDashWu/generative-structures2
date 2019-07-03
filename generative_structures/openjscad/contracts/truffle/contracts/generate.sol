pragma solidity ^0.5.0;

import '../../token/ERC721/ERC721Full.sol';
import '../../ownership/Ownable.sol';


/// @title Generative Structures
/// @author https://github.com/RaymondDashWu
/// @notice This contract is for generating structures based on OpenJSCAD. Contract will return minified jscad code that has been compressed with LZMA
/// @dev Attempting to get OpenJSCAD working in Django. Not currently working
/// @dev based on https://hackernoon.com/ethereum-smart-contracts-in-python-a-comprehensive-ish-guide-771b03990988
contract GenerativeStructure is ERC721Full, Ownable {
// Our 'dict' of addresses that are approved
    mapping (address => bool) approvedOwner;
    string code;
     
    // Our event to announce on the blockchain
    event GenerativeCodeBroadcast(address _purchaser, string _code);
// This is a constructor function, so its name has to match the contract
    // function generateStructure() public {
    // }
    constructor(string memory _name, string memory _symbol) ERC721Full(_name, _symbol) public {
    }
    
    // Because this function is 'payable' it will be called when ether is sent to the contract address.
    function() external payable{
        // msg is a special variable that contains information about the transaction
        if (msg.value > 20000000000000000) {  
            //if the value sent greater than 0.02 ether (in Wei)
            // then add the sender's address to approvedOwner 
            approvedOwner[msg.sender] =  true;
        }
    }
    
    
    // Our read-only function that checks whether the specified address is approved
    function isApproved(address _purchaser) public view returns (bool approved) {
        return approvedOwner[_purchaser];
    } 
    
    // Read-only function that returns the current generative code
    function getGenerativeCode() public view returns(string memory) {
        return code;
    }
//Our function that modifies the state on the blockchain
    function broadcastGenerativeCode(string memory _code) public returns (bool success) {
        // Looking up the address of the sender will return false if the sender isn't approved
        if (approvedOwner[msg.sender]) {
            
            code = _code;
            emit GenerativeCodeBroadcast(msg.sender, code);
            return true;
        } else {
            return false;
        }
        
    }
}