import { randomTables } from "./data/random-tables.js";

function addRollButton(element) {
  const table = randomTables[element.dataset.table];
  const button = document.createElement("button");
  button.textContent = "Roll me one";
  button.addEventListener(
    "click",
    () => window.alert(table[Math.floor(Math.random() * table.length)])
  );
  element.appendChild(button);
}

document.addEventListener(
  "DOMContentLoaded",
  () => document.querySelectorAll(".roll-me-one").forEach(addRollButton)
);
