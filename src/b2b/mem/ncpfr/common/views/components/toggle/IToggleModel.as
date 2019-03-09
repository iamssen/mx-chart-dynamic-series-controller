package b2b.mem.ncpfr.common.views.components.toggle {
import flash.events.IEventDispatcher;

[Event(name="itemsChanged", type="b2b.mem.ncpfr.common.views.components.toggle.ToggleEvent")]
[Event(name="labelChanged", type="b2b.mem.ncpfr.common.views.components.toggle.ToggleEvent")]
[Event(name="selectionChanged", type="b2b.mem.ncpfr.common.views.components.toggle.ToggleEvent")]

public interface IToggleModel extends IEventDispatcher {
	function numItems():uint;
	function getItem(index:uint):IToggleItem;
	function setItems(value:Vector.<IToggleItem>):void;
	function refreshSelected(index:uint):void;
	function refreshLabel(index:uint):void;
}
}
