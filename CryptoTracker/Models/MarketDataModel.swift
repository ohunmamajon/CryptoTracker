//
//  MarketDataModel.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/22.
//

import Foundation

// Json Data
/*
 
 'https://api.coingecko.com/api/v3/global'
 
 {
   "data": {
     "active_cryptocurrencies": 10022,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 778,
     "total_market_cap": {
       "btc": 41722550.27686859,
       "eth": 658561681.9066573,
       "ltc": 13292603774.665419,
       "bch": 5044484720.999237,
       "bnb": 5120537793.624895,
       "eos": 1589241036101.2407,
       "xrp": 1601969197229.779,
       "xlm": 7879912218077.82,
       "link": 153905878472.7774,
       "dot": 227230288347.6155,
       "yfi": 183019355.452902,
       "usd": 1247383415768.6711,
       "aed": 4581639286118.334,
       "ars": 335910250060835,
       "aud": 1853467059356.016,
       "bdt": 135431795364294.33,
       "bhd": 469735904559.9176,
       "bmd": 1247383415768.6711,
       "brl": 5962617465715.831,
       "cad": 1650350628232.7393,
       "chf": 1080205348237.1044,
       "clp": 1026347074494461.1,
       "cny": 8965942515862.064,
       "czk": 26935498526742.344,
       "dkk": 8353851473744.36,
       "eur": 1120462153214.2068,
       "gbp": 970273447805.4138,
       "hkd": 9753103820382.852,
       "huf": 425420113947906.44,
       "idr": 18764825307603636,
       "ils": 4515827337102.375,
       "inr": 102289244612449.06,
       "jpy": 176854045597928.72,
       "krw": 1604945871898757.5,
       "kwd": 382885586853.6089,
       "lkr": 409581237249783.8,
       "mmk": 2620262615508847.5,
       "mxn": 21193705347120.066,
       "myr": 5689315759320.885,
       "ngn": 968593222344373.8,
       "nok": 12568510558943.55,
       "nzd": 2018419794873.8474,
       "php": 68315451273552.84,
       "pkr": 356814026080627.9,
       "pln": 5002194604744.739,
       "rub": 112885377545778.08,
       "sar": 4679814597856.417,
       "sek": 12957818923004.951,
       "sgd": 1660142588046.5232,
       "thb": 42896765990851.83,
       "try": 33646919009560.688,
       "twd": 39088630408234.91,
       "uah": 45855485857433.26,
       "vef": 124900501420.91685,
       "vnd": 29509898646098984,
       "zar": 22399738002656,
       "xdr": 921196394695.412,
       "xag": 50685017649.76745,
       "xau": 635778853.1831315,
       "bits": 41722550276868.586,
       "sats": 4172255027686859
     },
     "total_volume": {
       "btc": 1358457.2985551371,
       "eth": 21442311.589251917,
       "ltc": 432797959.2490786,
       "bch": 164244923.69754553,
       "bnb": 166721158.99237475,
       "eos": 51744585849.34545,
       "xrp": 52159005947.529976,
       "xlm": 256564476370.3793,
       "link": 5011068655.06727,
       "dot": 7398460583.31059,
       "yfi": 5958983.272642643,
       "usd": 40613938841.29481,
       "aed": 149174997364.07596,
       "ars": 10937004757056.062,
       "aud": 60347601901.258484,
       "bdt": 4409565322545.753,
       "bhd": 15294275247.03823,
       "bmd": 40613938841.29481,
       "brl": 194138689055.2735,
       "cad": 53734271783.97505,
       "chf": 35170736915.96788,
       "clp": 33417148878617.316,
       "cny": 291924869603.4591,
       "czk": 877001149763.3823,
       "dkk": 271995609814.0352,
       "eur": 36481470564.192986,
       "gbp": 31591430485.88465,
       "hkd": 317554295709.25714,
       "huf": 13851383841823.629,
       "idr": 610969696868192,
       "ils": 147032205950.80914,
       "inr": 3330466857499.637,
       "jpy": 5758245059979.127,
       "krw": 52255924410151.85,
       "kwd": 12466489141.274265,
       "lkr": 13335681002263.305,
       "mmk": 85313933365731.92,
       "mxn": 690052346301.1841,
       "myr": 185240175055.1448,
       "ngn": 31536723510265.434,
       "nok": 409221986371.0022,
       "nzd": 65718348559.6924,
       "php": 2224303710363.002,
       "pkr": 11617617205552.361,
       "pln": 162867986844.41846,
       "rub": 3675469596407.5146,
       "sar": 152371517420.58038,
       "sek": 421897596683.37024,
       "sgd": 54053091203.87921,
       "thb": 1396688947774.8882,
       "try": 1095520345691.1461,
       "twd": 1272698694500.233,
       "uah": 1493022814484.0369,
       "vef": 4066673696.1788425,
       "vnd": 960821832064294.8,
       "zar": 729319933069.8898,
       "xdr": 29993515676.11277,
       "xag": 1650269019.9140484,
       "xau": 20700518.488019466,
       "bits": 1358457298555.1372,
       "sats": 135845729855513.72
     },
     "market_cap_percentage": {
       "btc": 46.58279724280243,
       "eth": 18.258960227944442,
       "usdt": 6.715584485237967,
       "xrp": 3.27845698514335,
       "bnb": 3.0449214013987835,
       "usdc": 2.1529844842412533,
       "steth": 1.180058628839097,
       "ada": 0.8782026469793218,
       "sol": 0.8309558585214862,
       "doge": 0.8275267514790084
     },
     "market_cap_change_percentage_24h_usd": 0.7415063233230604,
     "updated_at": 1689975234
   }
 }
 */



struct GlobalData: Codable {
    let data: MarketDataModel?
}


struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case  marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd"})
        {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" })
        {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}

