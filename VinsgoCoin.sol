/*
This creates a public tradeable fungible token in the Ethereum Blockchain.
https://github.com/ethereum/wiki/wiki/Standardized_Contract_APIs

Unmodified this will create a cryptoasset with a fixed market cap
wholly owned by the contract creator. You can create any function
to change this contract, like allowing specific rules for the issuance,
destruction and freezing of any assets. This contract is intended for
educational purposes, you are fully responsible for compliance with
present or future regulations of finance, communications and the
universal rights of digital beings.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org>

*/
contract VinsgoCoin {
    /* Public variables of the token */
    string public name;
    string public symbol;
    uint8 public decimals;
    address public owner;

    /* This creates an array with all balances */
    mapping (address => uint256) public balanceOf;

    /* This generates a public event on the blockchain that will notify clients */
    event CoinSend(address indexed from, address indexed to, uint256 value);

    /* Initializes contract with initial supply tokens to the creator of the contract */
    function VinsgoCoin(uint256 _supply, string _name, string _symbol, uint8 _decimals) {
        /* if supply not given then generate arround 1 million of the smallest unit of the token */
        //if (_supply == 0) _supply = 1020304;

        owner = msg.sender;
        /* Unless you add other functions these variables will never change */
        balanceOf[msg.sender] = _supply;
        name = _name; // still possible to chnage the name at the creation of the contract
        symbol = _symbol; // idem for symbol

        /* If you want a divisible token then add the amount of decimals the base unit has  */
        decimals = _decimals;
    }


    /* Send coins */
    function send(address _to, uint256 _value) {
        /* if the sender doenst have enough balance then stop */
        if (balanceOf[msg.sender] < _value) throw;
        if (balanceOf[_to] + _value < balanceOf[_to]) throw;

        /* Add and subtract new balances */
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        /* Notifiy anyone listening that this transfer took place */
        CoinSend(msg.sender, _to, _value);
    }

    /* Send All your coins */
    function sendAll(address _to) {

        /* Add and subtract new balances */
        uint256 all = balanceOf[msg.sender];
        balanceOf[msg.sender] = 0;
        balanceOf[_to] = all;

        /* Notifiy anyone listening that this transfer took place */
        CoinSend(msg.sender, _to, all);
    }

    /* Just print new money whenever we want (all the fresh printed money goes to the initial creator :) */
    function QE(uint256 _newPrintedMoney) {
      balanceOf[msg.sender] += _newPrintedMoney;
    }

    /* Query the balance of an address */
    function queryBalance(address addr) constant returns (uint balance) {
      return balanceOf[addr];
    }

    /* Function to recover the funds on the contract */
    function kill() { if (msg.sender == owner) suicide(owner); }

}
