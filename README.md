# VinsgoCoin
A simple coin example for a presentation about Ethereum and smart contracts.

### About
1020304 VinsgoCoin created

## The coin
#### Address 
 0xD4C4ea3DC5C634af3EDDfCAD3aA7339546dE1342

### Json

[
   {
      "constant":true,
      "inputs":[

      ],
      "name":"name",
      "outputs":[
         {
            "name":"",
            "type":"string",
            "value":"VinsgoCoin",
            "displayName":""
         }
      ],
      "type":"function",
      "displayName":"name"
   },
   {
      "constant":true,
      "inputs":[

      ],
      "name":"decimals",
      "outputs":[
         {
            "name":"",
            "type":"uint8",
            "value":"2",
            "displayName":""
         }
      ],
      "type":"function",
      "displayName":"decimals"
   },
   {
      "constant":true,
      "inputs":[
         {
            "name":"",
            "type":"address",
            "typeShort":"address",
            "bits":"",
            "displayName":"",
            "template":"elements_input_address"
         }
      ],
      "name":"balanceOf",
      "outputs":[
         {
            "name":"",
            "type":"uint256",
            "value":"0",
            "displayName":""
         }
      ],
      "type":"function",
      "displayName":"balance Of"
   },
   {
      "constant":true,
      "inputs":[

      ],
      "name":"symbol",
      "outputs":[
         {
            "name":"",
            "type":"string",
            "value":"VINSGO",
            "displayName":""
         }
      ],
      "type":"function",
      "displayName":"symbol"
   },
   {
      "constant":false,
      "inputs":[
         {
            "name":"_to",
            "type":"address",
            "typeShort":"address",
            "bits":"",
            "displayName":"&thinsp;<span class=\"punctuation\">_</span>&thinsp;to",
            "template":"elements_input_address"
         },
         {
            "name":"_value",
            "type":"uint256",
            "typeShort":"uint",
            "bits":"256",
            "displayName":"&thinsp;<span class=\"punctuation\">_</span>&thinsp;value",
            "template":"elements_input_uint"
         }
      ],
      "name":"send",
      "outputs":[

      ],
      "type":"function",
      "displayName":"send"
   },
   {
      "constant":false,
      "inputs":[
         {
            "name":"_to",
            "type":"address",
            "typeShort":"address",
            "bits":"",
            "displayName":"&thinsp;<span class=\"punctuation\">_</span>&thinsp;to",
            "template":"elements_input_address"
         }
      ],
      "name":"sendAll",
      "outputs":[

      ],
      "type":"function",
      "displayName":"send All"
   },
   {
      "inputs":[
         {
            "name":"_supply",
            "type":"uint256",
            "typeShort":"uint",
            "bits":"256",
            "displayName":"&thinsp;<span class=\"punctuation\">_</span>&thinsp;supply",
            "template":"elements_input_uint",
            "value":"102030405"
         },
         {
            "name":"_name",
            "type":"string",
            "typeShort":"string",
            "bits":"",
            "displayName":"&thinsp;<span class=\"punctuation\">_</span>&thinsp;name",
            "template":"elements_input_string",
            "value":"VinsgoCoin"
         },
         {
            "name":"_symbol",
            "type":"string",
            "typeShort":"string",
            "bits":"",
            "displayName":"&thinsp;<span class=\"punctuation\">_</span>&thinsp;symbol",
            "template":"elements_input_string",
            "value":"VINSGO"
         },
         {
            "name":"_decimals",
            "type":"uint8",
            "typeShort":"uint",
            "bits":"8",
            "displayName":"&thinsp;<span class=\"punctuation\">_</span>&thinsp;decimals",
            "template":"elements_input_uint",
            "value":"2"
         }
      ],
      "type":"constructor"
   },
   {
      "anonymous":false,
      "inputs":[
         {
            "indexed":true,
            "name":"from",
            "type":"address"
         },
         {
            "indexed":true,
            "name":"to",
            "type":"address"
         },
         {
            "indexed":false,
            "name":"value",
            "type":"uint256"
         }
      ],
      "name":"CoinSend",
      "type":"event"
   }
]
