# Basic Structure

- `interface IToggleModel` 
	- `interface IToggleItem`

- `class ToggleComponentController`

- `interface ToggleComponent`

- `class ToggleEvent` (ToggleModel - ToggleComponentController wiring)

# Default Component

- `class ToggleList implements ToggleComponent`

- `class ToggleListButton extends ToggleButton`

- `class ToggleListController extends ToggleComponentController`




- toggling targets
	- Chart
	- Table
	
- `TogglerModel` 
	- array `items`
		- uint `index`
		- string `label`
		- boolean `selected`
		- json `options` = controller 에 따라 원하는 옵션이 다르다
	- `toggle(index : int, selected : boolean)` Toggler 가 사용하는 변경 메서드
	- `labelChange(index : int, label : String)` 
	- dispatch `ITEMS_CHANGED` = target 의 아이템들 전체를 재구성 시킨다
	- dispatch `SELECTION_CHANGED` = target 의 아이템들의 toggle options 을 조정한다
		
- component Toggler
	- model
	
- abstract `TogglingTargetController`
	- model
	



