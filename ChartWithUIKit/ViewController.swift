//
//  ViewController.swift
//  ChartWithUIKit
//
//  Created by Val Po on 15.05.2023.
//

import UIKit
import Charts

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createMyChart()
    }

    private func createMyChart() {
        let barChart = BarChartView(frame: CGRect(x: 0,
                                                  y: 0,
                                                  width: view.frame.size.width,
                                                  height: view.frame.size.width))
        barChart.center = view.center
        // Axes
        let xAxis = barChart.xAxis
        let rightAxis = barChart.rightAxis
        // Legend
        let legend = barChart.legend
        var entries: [BarChartDataEntry] = []
        for x in 0..<8 {
            entries.append(BarChartDataEntry(x: Double(x), y: Double.random(in: 0...50)))
        }
        let set = BarChartDataSet(entries: entries, label: "Values")
        set.colors = ChartColorTemplates.vordiplom()
        let chartData = BarChartData(dataSets: [set])
        barChart.data = chartData
        view.addSubview(barChart)
    }
}

