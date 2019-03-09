package b2b.mem.ncpfr.common.views.components.toggle {

import spark.components.ToggleButton;

public class ToggleListButton extends ToggleButton {
	public var item:IToggleItem;

	public function setItem(value:IToggleItem):void {
		item=value;

		label=value.label;
		selected=value.selected;

		invalidateDisplayList();
	}

	public function refreshLabel():void {
		label=item.label;

		invalidateDisplayList();
	}

	public function refreshSelection():void {
		selected=item.selected;

		invalidateDisplayList();
	}
}
}
