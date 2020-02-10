$(document).on('turbolinks:load', ()=> {
  // 画像用のinputを生成する関数
  const buildFileField = (num)=> {
    const html = `<div class="js-file_group" data-index="${num}">
    <label class="js-file" for="person_characters_attributes_${num}_chara">特徴</label>
    <input class="js-file" include_hidden="false" type="text" name="person[characters_attributes][${num}][chara]" id="person_characters_attributes_${num}_chara">
   
     </div>`;
                
    return html;
  }

  // file_fieldのnameに動的なindexをつける為の配列
  let fileIndex = [1,2,3,4,5,6,7,8,9,10];

  $('#button1').click(function(e) {
    // fileIndexの先頭の数字を使ってinputを作る
    $('#chara-box').append(buildFileField(fileIndex[0]));
    fileIndex.shift();
    // 末尾の数に1足した数を追加する
    fileIndex.push(fileIndex[fileIndex.length - 1] + 1)
  });

  $('#chara-box').on('click', '.js-remove', function() {
    $(this).parent().remove();
    // 画像入力欄が0個にならないようにしておく
    if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
  });

  $('#button2').click(function(e) {
    if ($('.js-file_group').length !== 1){
      $('.js-file_group').last().remove();  
    // debugger
    }
  })
});

