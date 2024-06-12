import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
	disableOptions(event) {
		const selectedOption = event.target.value;
		const selectedOptionElement = event.target.options[event.target.selectedIndex];
		const selectedOptionLevel = parseInt(selectedOptionElement.className.split('-')[1]);

		let disableNext = false;

		Array.from(event.target.options).forEach(option => {
			const optionLevel = parseInt(option.className.split('-')[1]);

			if (disableNext && optionLevel > selectedOptionLevel) {
				option.disabled = true;
			} else {
				option.disabled = false;
			}

			if (option.value === selectedOption) {
				disableNext = true;
			}

			if (optionLevel <= selectedOptionLevel && option.value !== selectedOption) {
				disableNext = false;
			}
		});
	}
}
