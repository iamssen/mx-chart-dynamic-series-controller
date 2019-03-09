package b2b.mem.ncpfr.common.views.components.toggle {
	
import flash.events.EventDispatcher;

[Event(name="itemsChanged", type="b2b.mem.ncpfr.common.views.components.toggle.ToggleEvent")]
[Event(name="labelChanged", type="b2b.mem.ncpfr.common.views.components.toggle.ToggleEvent")]
[Event(name="selectionChanged", type="b2b.mem.ncpfr.common.views.components.toggle.ToggleEvent")]

public class ToggleModel extends EventDispatcher implements IToggleModel {
	private var items:Vector.<IToggleItem>;

	public function getItem(index:uint):IToggleItem {
		return items[index];
	}

	public function numItems():uint {
		return items.length;
	}

	public function setItems(value:Vector.<IToggleItem>):void {
		items=value;
		dispatchEvent(new ToggleEvent(ToggleEvent.ITEMS_CHANGED, this));
	}

	public function refreshLabel(index:uint):void {
		dispatchEvent(new ToggleEvent(ToggleEvent.LABEL_CHANGED, this, index));
	}

	public function refreshSelected(index:uint):void {
		dispatchEvent(new ToggleEvent(ToggleEvent.SELECTION_CHANGED, this, index));
	}
}
}
