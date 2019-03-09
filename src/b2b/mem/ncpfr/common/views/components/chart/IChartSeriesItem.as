package b2b.mem.ncpfr.common.views.components.chart {
import mx.charts.chartClasses.Series;

import b2b.mem.ncpfr.common.views.components.toggle.IToggleItem;

public interface IChartSeriesItem extends IToggleItem {
	function createSeries():Series;
}
}
