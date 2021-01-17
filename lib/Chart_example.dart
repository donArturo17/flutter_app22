Container(
width: 500,
height:300,
child: BezierChart(

bezierChartScale: BezierChartScale.CUSTOM,
xAxisCustomValues: const[1, 2, 3, 4, 5, 6, 7, 8, 9 ],
series: const[
BezierLine(
dataPointFillColor: Colors.grey,
lineColor: Colors.blue,
data: const[
DataPoint<double>(value: 5, xAxis:1),
DataPoint<double>(value: 7, xAxis:2),
DataPoint<double>(value: 9, xAxis:3),
DataPoint<double>(value: 1, xAxis:4),
DataPoint<double>(value: 5, xAxis:5),
DataPoint<double>(value: 9, xAxis:6),
DataPoint<double>(value: 9, xAxis:7),
DataPoint<double>(value: 8, xAxis:8),
DataPoint<double>(value: 8, xAxis:9),
],
),
],
config: BezierChartConfig(
xLinesColor: Colors.green,
bubbleIndicatorColor: Colors.yellow,

verticalIndicatorStrokeWidth: 10.0,
verticalIndicatorColor: Colors.white,
showVerticalIndicator: true,
showDataPoints: true,
snap: false,
)
),
),