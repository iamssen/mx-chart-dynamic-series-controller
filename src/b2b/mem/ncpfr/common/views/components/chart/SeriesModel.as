package b2b.mem.ncpfr.common.views.components.chart {
import b2b.mem.ncpfr.common.views.components.toggle.ToggleModel;

public class SeriesModel extends ToggleModel {
	public function getSeriesList():Array {
		var list:Array=[];

		var item:IChartSeriesItem;

		var f:int=-1;
		var fmax:int=numItems();

		while (++f < fmax) {
			item=getItem(f) as IChartSeriesItem;

			if (item.selected) {
				list.push(item.createSeries());
			}
		}

		return list;
	}
}
}
