// Entry point for the build script in your package.json
import Rails from "@rails/ujs";
Rails.start();

import "@hotwired/turbo-rails";
import "./controllers";

document.addEventListener("turbo:load", () => {
  const imageSelector = document.getElementById("image-selector");
  const previewsContainer = document.getElementById("image-previews");

  if (imageSelector) {
    imageSelector.addEventListener("change", (event) => {
      const files = event.target.files;

      // 画像が3枚以上選択されていないか確認
      if (files.length > 3) {
        alert("画像は最大3枚までです");
        imageSelector.value = ""; // 選択をリセット
        return; // これ以上の処理を中止
      }
      
      const previewContainers = previewsContainer.querySelectorAll(".image-preview-container");

      [...previewContainers].forEach((container, index) => {
        const preview = container.querySelector(".image-preview");
        const hiddenField = container.querySelector(".hidden-image-url");
        const destroyCheckbox = container.querySelector(`#destroy-${index}`);
        const destroyLabel = container.querySelector(".destroy-label"); // ラベル取得

        if (files[index]) {
          const file = files[index];
          const reader = new FileReader();

          reader.onload = (e) => {
            // プレビュー画像を更新
            preview.innerHTML = `<img src="${e.target.result}" alt="Preview" class="rounded shadow-lg" width="100">`;
            hiddenField.value = e.target.result;

            // Hidden フィールドに Base64 エンコードされたデータを一時的にセット
            hiddenField.value = e.target.result;
            // Hidden フィールドに Base64 エンコードされたデータを格納
            hiddenField.value = e.target.result;

            // 削除チェックボックスを有効化
            destroyCheckbox.disabled = false;
            destroyLabel.classList.remove("hidden"); // 非表示解除
          };

          reader.readAsDataURL(file);
        } else {
          // ファイルが未選択の場合、プレビューとフィールドをクリア
          preview.innerHTML = '<p class="text-gray-500">画像が未設定です</p>';
          hiddenField.value = "";
          destroyCheckbox.disabled = true;
          destroyLabel.classList.add("hidden"); // 再び非表示に
        }
      });
    });
  }
});

