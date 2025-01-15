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

        if (files[index]) {
          const file = files[index];
          const reader = new FileReader();

          reader.onload = (e) => {
            // プレビュー画像を更新
            preview.innerHTML = `<img src="${e.target.result}" alt="Preview" class="rounded shadow-lg" width="100">`;

            // Hidden フィールドに Base64 エンコードされたデータを一時的にセット
            hiddenField.value = e.target.result;

            // 削除チェックボックスを有効化
            destroyCheckbox.disabled = false;
          };

          reader.readAsDataURL(file);
        } else {
          // ファイルが未選択の場合、プレビューとフィールドをクリア
          preview.innerHTML = '<p class="text-gray-500">画像が未設定です</p>';
          hiddenField.value = "";
          destroyCheckbox.disabled = true;
        }
      });
    });
  }
});
