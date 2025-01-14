// Entry point for the build script in your package.json
import Rails from "@rails/ujs";
Rails.start();


import "@hotwired/turbo-rails"
import "./controllers"

document.addEventListener("DOMContentLoaded", () => {
  const dateInput = document.querySelector("input[name='event[date]']");
  if (dateInput) {
    dateInput.addEventListener("input", (event) => {
      const value = event.target.value;

      // "YYYYMMDD" 形式を検証
      if (!/^\d{8}$/.test(value)) {
        event.target.setCustomValidity("日付はYYYYMMDD形式で入力してください (例: 20250114)");
      } else {
        event.target.setCustomValidity("");
      }
    });
  }
});
  
