package b2b.mem.ncpfr.common.views.components.toggle {

public interface IToggleItem {
	function get index():uint;
	function get label():String;
	function get selected():Boolean;
	function set selected(value:Boolean):void;
}
}
