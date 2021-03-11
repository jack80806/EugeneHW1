//
//  question.swift
//  EugeneHW1
//
//  Created by User24 on 2021/3/7.
//  Copyright © 2021 yuen. All rights reserved.
//

import SwiftUI

struct QandA{
    var QNum: Int
    var Question: String
    var Ans: String
    var selection: [String]
}

var QuestionBank = [
    QandA(QNum:1, Question:"一人在內(猜一字)", Ans:"肉", selection:["肉","王","一"]),
    QandA(QNum:2, Question:"一口咬定(猜一字)", Ans:"交", selection:["交","七","午"]),
    QandA(QNum:3, Question:"人無信不立(猜一字)", Ans:"言", selection:["言","大","吉"]),
    QandA(QNum:4, Question:"一加一(猜一字)", Ans:"王", selection:["王","師","帥"]),
    QandA(QNum:5, Question:"二小姐(猜一字)", Ans:"姿", selection:["姿","言","汗"]),
    QandA(QNum:6, Question:"一走就帶千軍(猜一字)", Ans:"師", selection:["師","帥","午"]),
    QandA(QNum:7, Question:"一來就有徒弟(猜一字)", Ans:"帥", selection:["帥","師","必"]),
    QandA(QNum:8, Question:"一柱擎天(猜一字)", Ans:"未", selection:["未","三","心"]),
    QandA(QNum:9, Question:"一飛沖天(猜一字)", Ans:"大", selection:["大","王","茲"]),
    QandA(QNum:10, Question:"一家十一口(猜一字)", Ans:"吉", selection:["吉","說","旭"]),
    QandA(QNum:11, Question:"一減一不是零(猜一字)", Ans:"三", selection:["三","二","一"]),
    QandA(QNum:12, Question:"一鉤殘月伴參星(猜一字)", Ans:"心", selection:["心","必","惢"]),
    QandA(QNum:13, Question:"一箭穿心(猜一字)", Ans:"必", selection:["心","必","惢"]),
    QandA(QNum:14, Question:"一邊有水一邊幹(猜一字)", Ans:"汗", selection:["汗","干","肝"]),
    QandA(QNum:15, Question:"一齣頭就長角(猜一字)", Ans:"午", selection:["午","牛","禾"]),
    QandA(QNum:16, Question:"九號(猜一字)", Ans:"旭", selection:["旭","日","吁"]),
    QandA(QNum:17, Question:"十三點(猜一字)", Ans:"汁", selection:["汁","王","河"])]

