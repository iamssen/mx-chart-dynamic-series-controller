package b2b.mem.ncpfr.common.views.components.toggle {
import flash.events.Event;

public class ToggleEvent extends Event {
	public static const ITEMS_CHANGED:String="itemsChanged";
	public static const LABEL_CHANGED:String="labelChanged";
	public static const SELECTION_CHANGED:String="selectionChanged";

	private var _model:IToggleModel;
	private var _index:int;

	public function ToggleEvent(type:String, model:IToggleModel, index:int=-1) {
		super(type);

		_model=model;
		_index=index;
	}

	public function get model():IToggleModel {
		return _model;
	}

	public function get index():int {
		return _index;
	}

	override public function clone():Event {
		return new ToggleEvent(type, _model, _index);
	}

	override public function toString():String {
		return formatToString("ToggleEvent", "type", "model", "index");
	}
}
}
