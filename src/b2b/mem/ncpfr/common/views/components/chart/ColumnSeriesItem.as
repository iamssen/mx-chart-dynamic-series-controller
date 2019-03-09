package b2b.mem.ncpfr.common.views.components.chart {
import mx.charts.chartClasses.Series;
import mx.charts.series.ColumnSeries;

import b2b.mem.ncpfr.common.views.components.toggle.ToggleItem;

public class ColumnSeriesItem extends ToggleItem implements IChartSeriesItem {
	public var maxColumnWidth:int;

	public var xField:String;
	public var yField:String;

	public var displayName:String;

	public function ColumnSeriesItem(index:uint, selected:Boolean) {
		super(index, "", selected);
	}

	public function createSeries():Series {
		var series:ColumnSeries=new ColumnSeries;
		series.maxColumnWidth=maxColumnWidth;
		series.xField=xField;
		series.yField=yField;
		series.displayName=label;

		return series;
	}

	override public function get label():String {
		return displayName;
	}
}
}
