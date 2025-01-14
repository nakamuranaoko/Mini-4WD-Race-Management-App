// Entry point for the build script in your package.json
import Rails from "@rails/ujs";
Rails.start();


import "@hotwired/turbo-rails"
import "./controllers"

document.addEventListener("DOMContentLoaded", () => {
  const container = document.getElementById("course-photos-container");
  const addPhotoBtn = document.getElementById("add-photo-btn");
  let photoCount = container.querySelectorAll(".course-photo-fields").length;
  const maxPhotos = 3;
  
  addPhotoBtn.addEventListener("click", () => {
    if (photoCount >= maxPhotos) {
      alert("写真は最大3枚まで選択できます。");
      return;
    }
  
    const newPhotoFields = document.createElement("div");
    newPhotoFields.className = "form-control mb-4 course-photo-fields";
    newPhotoFields.innerHTML = `
      <label class="label-text">コース写真</label>
      <input type="file" name="event[course_photos_attributes][${photoCount}][image_url]" class="file-input file-input-bordered">
      <button type="button" class="btn btn-secondary btn-sm mt-2 remove-photo-btn">削除</button>
    `;
  
    container.appendChild(newPhotoFields);
    photoCount++;
  
    // 削除ボタンのイベントリスナーを追加
    newPhotoFields.querySelector(".remove-photo-btn").addEventListener("click", () => {
      newPhotoFields.remove();
      photoCount--;
    });
  });
});
  
  
  
