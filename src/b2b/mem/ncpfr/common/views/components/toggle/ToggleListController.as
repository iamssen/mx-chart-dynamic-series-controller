package b2b.mem.ncpfr.common.views.components.toggle {
import flash.events.Event;

import spark.components.Group;

public class ToggleListController extends ToggleComponentController {
	private var component:Group;
	private var buttons:Vector.<ToggleListButton>;

	public function ToggleListController(component:Group, model:IToggleModel) {
		this.component=component;
		setModel(model);
	}

	override public function dispose():void {
		super.dispose();

		removeButtons();

		component=null;
		buttons=null;
	}

	override protected function refreshItems():void {
		removeButtons();

		if (model.numItems() === 0) {
			return;
		}

		buttons=new Vector.<ToggleListButton>(model.numItems(), true);

		var item:IToggleItem;
		var button:ToggleListButton;

		var f:int=-1;
		var fmax:int=model.numItems();

		while (++f < fmax) {
			item=model.getItem(f);
			button=new ToggleListButton;
			button.setItem(item);
			addButtonEvents(button);

			component.addElement(button);
			buttons[f]=button;
		}
	}

	private function removeButtons():void {
		if (buttons) {
			component.removeAllElements();

			var button:ToggleListButton;
			var f:int=buttons.length;

			while (--f >= 0) {
				button=buttons[f];
				removeButtonEvents(button);
			}

			buttons=null;
		}
	}

	private function addButtonEvents(button:ToggleListButton):void {
		button.addEventListener(Event.CHANGE, selectionChanged);
	}

	private function selectionChanged(event:Event):void {
		var button:ToggleListButton=event.target as ToggleListButton;
		var write:IToggleItem=button.item as IToggleItem;

		if (button.item.selected !== button.selected) {
			write.selected=button.selected;
			model.refreshSelected(button.item.index);
		}
	}

	private function removeButtonEvents(button:ToggleListButton):void {
		button.removeEventListener(Event.CHANGE, selectionChanged);
	}

	override protected function refreshLabel(index:int):void {
		var button:ToggleListButton=buttons[index];
		button.refreshLabel();
	}

	override protected function refreshSelection(index:int):void {
		var button:ToggleListButton=buttons[index];
		button.refreshSelection();
	}
}
}
