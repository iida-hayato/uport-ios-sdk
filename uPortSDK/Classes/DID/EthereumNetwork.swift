//
//  Networks.swift
//  uPortSDK
//
//  Created by mac on 3/26/18.
//

import UIKit

class EthereumNetwork: NSObject {

    @objc var name: String = ""           //  ex: "kovan"
    @objc var networkId: String = ""       //  ex: "0x2a"
    @objc var registry: String = ""        //  ex: MNID.encode({address: '0x5f8e9351dc2d238fb878b6ae43aa740d62fc9758', network: '0x2a'})
    @objc var rpcUrl: String = ""        //  ex: "https://kovan.infura.io/uport"
    @objc var explorerUrl: String = ""     //  ex: "https://kovan.etherscan.io"
    @objc var faucetUrl: String = ""       //  ex: "https://sensui.uport.me/api/v1/fund/"
    @objc var relayUrl: String = ""        //  ex: "https://sensui.uport.me/api/v2/relay/"

    override init() {
        super.init()
    }
    
    public convenience init?( network: String ) {
        self.init()
        guard let networkInfo = self.networks[ network ] else {
            return nil // network not supported at this time
        }
        
        self.setValuesForKeys( networkInfo )
    }
    
    private lazy var networks: [String: [String: String]] = {
        return [
            "0x01": [
                "name": "mainnet",
                "networkId": "0x01",
                "registry": MNID.encode( network: "0x01", address: "0xab5c8051b9a1df1aab0149f8b0630848b7ecabf6" )!,
                "rpcUrl": "https://mainnet.infura.io/uport",
                "explorerUrl": "https://etherscan.io",
                "faucetUrl": "https://sensui.uport.me/api/v1/fund/",
                "relayUrl": "https://sensui.uport.me/api/v2/relay/"
                ],
            "0x03": [
                "name": "ropsten",
                "networkId": "0x03",
                "registry": MNID.encode( network:"0x03", address: "0x41566e3a081f5032bdcad470adb797635ddfe1f0")!,
                "rpcUrl": "https://ropsten.infura.io/uport",
                "explorerUrl": "https://ropsten.io",
                "faucetUrl": "https://sensui.uport.me/api/v1/fund/",
                "relayUrl": "https://sensui.uport.me/api/v2/relay/"
                ],
            "0x2a": [
                "name": "kovan",
                "networkId": "0x2a",
                "registry": MNID.encode( network: "0x2a", address: "0x5f8e9351dc2d238fb878b6ae43aa740d62fc9758")!,
                "rpcUrl": "https://kovan.infura.io/uport",
                "explorerUrl": "https://kovan.etherscan.io",
                "faucetUrl": "https://sensui.uport.me/api/v1/fund/",
                "relayUrl": "https://sensui.uport.me/api/v2/relay/"
                ],
"           0x16B2": [
                "name": "infuranet",
                "networkId": "0x16B2",
                "registry": "",
                "rpcUrl": "https://infuranet.infura.io/uport",
                "explorerUrl": "https://explorer.infuranet.io",
                "faucetUrl": "https://sensui.uport.me/api/v1/fund/",
                "relayUrl": "https://sensui.uport.me/api/v2/relay/"
                ],
            "0x04": [
                "name": "rinkeby",
                "networkId": "0x04",
                "registry": MNID.encode( network: "0x04", address: "0x2cc31912b2b0f3075a87b3640923d45a26cef3ee")!,
                "rpcUrl": "https://rinkeby.infura.io/uport",
                "explorerUrl": "https://rinkeby.etherscan.io",
                "faucetUrl": "https://api.uport.me/sensui/fund/",
                "relayUrl": "https://api.uport.me/sensui/fund/"
                ]
        ]
    }()
}
