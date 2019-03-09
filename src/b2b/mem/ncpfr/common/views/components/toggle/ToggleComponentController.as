package b2b.mem.ncpfr.common.views.components.toggle {


public class ToggleComponentController {
	protected var model:IToggleModel;

	protected function setModel(model:IToggleModel):void {
		this.model=model;

		model.addEventListener(ToggleEvent.ITEMS_CHANGED, itemsChanged, false, 0, true);
		model.addEventListener(ToggleEvent.LABEL_CHANGED, labelChanged, false, 0, true);
		model.addEventListener(ToggleEvent.SELECTION_CHANGED, selectionChanged, false, 0, true);

		refreshItems();
	}

	public function dispose():void {
		model.removeEventListener(ToggleEvent.ITEMS_CHANGED, itemsChanged);
		model.removeEventListener(ToggleEvent.LABEL_CHANGED, labelChanged);
		model.removeEventListener(ToggleEvent.SELECTION_CHANGED, selectionChanged);
		model=null;
	}

	private function itemsChanged(event:ToggleEvent):void {
		refreshItems();
	}

	private function labelChanged(event:ToggleEvent):void {
		refreshLabel(event.index);
	}

	private function selectionChanged(event:ToggleEvent):void {
		refreshSelection(event.index);
	}

	protected function refreshItems():void {
		throw new Error("not implemented");
	}

	protected function refreshLabel(index:int):void {
		throw new Error("not implemented");
	}

	protected function refreshSelection(index:int):void {
		throw new Error("not implemented");
	}
}
}
