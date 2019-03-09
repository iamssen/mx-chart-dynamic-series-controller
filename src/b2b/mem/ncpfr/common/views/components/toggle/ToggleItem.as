package b2b.mem.ncpfr.common.views.components.toggle {

public class ToggleItem implements IToggleItem {
	private var _index:uint;
	private var _label:String;
	private var _selected:Boolean;

	public function ToggleItem(index:uint, label:String, selected:Boolean) {
		_index=index;
		_label=label;
		_selected=selected;
	}

	public function get index():uint {
		return _index;
	}

	public function get label():String {
		return _label;
	}

	public function get selected():Boolean {
		return _selected;
	}

	public function set selected(value:Boolean):void {
		_selected=value;
	}
}
}
