package b2b.mem.ncpfr.common.views.components.chart {
import mx.charts.chartClasses.ChartBase;
import mx.charts.chartClasses.Series;

import b2b.mem.ncpfr.common.views.components.toggle.ToggleComponentController;

public class ChartSeriesToggleController extends ToggleComponentController {
	private var chart:ChartBase;

	public function ChartSeriesToggleController(chart:ChartBase, model:SeriesModel) {
		this.chart=chart;
		setModel(model);
	}

	override public function dispose():void {
		super.dispose();

		chart=null;
	}

	override protected function refreshItems():void {
		var seriesList:Array=SeriesModel(model).getSeriesList();
		chart.series=seriesList;
	}

	override protected function refreshLabel(index:int):void {
		var series:Series=chart.series[index];
		series.displayName=model.getItem(index).label;
	}

	override protected function refreshSelection(index:int):void {
		chart.series=SeriesModel(model).getSeriesList();
	}
}
}
