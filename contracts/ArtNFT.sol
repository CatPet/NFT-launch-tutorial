// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ArtNFT is ERC721 {
    constructor() ERC721("All Star 2022", "AllStar") {
    for(uint256 i = 0; i < 11; i++) {
      _mint(msg.sender, i);
    }
  }

  function _baseURI() internal pure override returns (string memory) {
    return "ipfs://bafybeiblewlwfavmhfqpwcv2nvoz6645mmb5e7hvcxkws5m2nmp25uud2m/";
  }
}
