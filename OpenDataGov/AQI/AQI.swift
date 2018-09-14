//
//  AQI.swift
//  OpenDataGov
//
//  Created by Kimi Peng on 2018/9/13.
//  Copyright © 2018年 Kimi Peng. All rights reserved.
//
//SiteName: "崙背",
//County: "雲林縣",
//AQI: "74",
//Pollutant: "細懸浮微粒",
//Status: "普通",
//SO2: "2.1",
//CO: "0.16",
//CO_8hr: "0.2",
//O3: "60",
//O3_8hr: "41",
//PM10: "38",
//PM2.5: "24",
//NO2: "4.6",
//NOx: "5.4",
//NO: "0.8",
//WindSpeed: "2.8",
//WindDirec: "281",
//PublishTime: "2018-09-13 15:00",
//PM2.5_AVG: "25",
//PM10_AVG: "44",
//Latitude: "23.757547",
//Longitude: "120.348742"



import Foundation

struct AQI: Codable {
    
    var County: String
    var PublishTime: String
    var Status: String
    var AQI: String
    
}
