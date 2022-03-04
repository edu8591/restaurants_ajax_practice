import { Controller } from "stimulus";

export default class extends Controller {
	static targets = ["count"];
	connect() {
		console.log(this.countTarget.innerText);
	}
	refresh() {
		console.log("comenzo el evento");
		fetch("/restaurants", { headers: { accept: "application/json" } })
			.then((response) => response.json())
			.then((data) => {
				this.countTarget.innerText = data.restaurants.length;
			});
	}
}
