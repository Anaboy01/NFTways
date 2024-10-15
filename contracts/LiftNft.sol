// SPDX-License-Identifier: MIT
    pragma solidity >=0.8.27;
    
    import "@openzeppelin/contracts@4.8.3/token/ERC721/ERC721.sol";
    
    contract RealToken is ERC721 {
        string constant baseURI = "https://tan-electrical-capybara-861.mypinata.cloud/ipfs/QmaknQPxf89JbhUYq15gVhYSM8E9uxQJiwzYoD9PBJGG4Y";  // The base URI points to your metadata JSON
    
        constructor() ERC721("RealToken", "RTK") {}
    
        function mint(address to, uint256 tokenId) public {
            _mint(to, tokenId);
        }
    
        function _baseURI() internal pure override returns (string memory) {
            return baseURI;
        }
    
        function tokenURI(uint256 tokenId) public view override returns (string memory) {
            require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
           
            return baseURI;
        }
    }