//
//  UVI.swift
//  OpenDataGov
//
//  Created by Kimi Peng on 2018/8/29.
//  Copyright © 2018年 Kimi Peng. All rights reserved.
//
//{
//    County: "屏東縣",
//    PublishAgency: "環境保護署",
//    PublishTime: "2018-08-29 15:00",
//    SiteName: "屏東",
//    UVI: "3",
//    WGS84Lat: "22,40,23.09",
//    WGS84Lon: "120,29,16.92"
//}



import Foundation

struct UVI: Codable {
    var County: String
    var PublishAgency: String
    var PublishTime: String
    var SiteName: String
    var UVI: String
}
