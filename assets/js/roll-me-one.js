import { randomTables } from "./data/random-tables.js";

function addRollButton(element) {
  const table = randomTables[element.dataset.table];
  const outcome = document.createElement("blockquote");
  const button = document.createElement("button");
  button.textContent = "Roll me one";
  button.addEventListener("click", () => {
    outcome.textContent = table[Math.floor(Math.random() * table.length)];
    button.textContent = "Reroll";
  });
  element.appendChild(button);
  element.appendChild(outcome);
}

document.addEventListener(
  "DOMContentLoaded",
  () => document.querySelectorAll(".roll-me-one").forEach(addRollButton)
);
