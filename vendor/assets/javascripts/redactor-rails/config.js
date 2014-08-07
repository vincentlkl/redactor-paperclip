$(document).ready(
  function(){
  var csrf_token = $('meta[name=csrf-token]').attr('content');
  var csrf_param = $('meta[name=csrf-param]').attr('content');
  var params;
  if (csrf_param !== undefined && csrf_token !== undefined) {
    params = csrf_param + "=" + encodeURIComponent(csrf_token);
  }
  $('.redactor').redactor(
    { "imageUpload":"/redactor_rails/pictures?" + params,
      "imageGetJson":"/redactor_rails/pictures",
      "path":"/assets/redactor-rails",
      "css":"style.css",
      "langs": {
        "ru": {
          html: 'HTML',
          video: 'Вставить видео',
          image: 'Вставить картинку',
          table: 'Таблица',
          link: 'Ссылка',
          link_insert: 'Вставить ссылку',
          link_edit: 'Редактировать ссылку',
          unlink: 'Удалить ссылку',
          formatting: 'Форматирование',
          paragraph: 'Параграф',
          quote: 'Цитата',
          code: 'Код',
          header1: 'Заголовок 1',
          header2: 'Заголовок 2',
          header3: 'Заголовок 3',
          header4: 'Заголовок 4',
          header5: 'Заголовок 5',
          bold: 'Полужирный',
          italic: 'Курсив',
          fontcolor: 'Цвет шрифта',
          backcolor: 'Цвет фона',
          unorderedlist: 'Неупорядоченный список',
          orderedlist: 'Упорядоченный список',
          outdent: 'Outdent',
          indent: 'Отступ',
          cancel: 'Отмена',
          insert: 'Вставить',
          save: 'Сохранить',
          _delete: 'Удалить',
          insert_table: 'Вставить таблицу',
          insert_row_above: 'Добавить строку выше',
          insert_row_below: 'Добавить строку ниже',
          insert_column_left: 'Добавить столбец слева',
          insert_column_right: 'Добавить столбец справа',
          delete_column: 'Удалить столбец',
          delete_row: 'Удалить строку',
          delete_table: 'Удалить таблицу',
          rows: 'Строки',
          columns: 'Столбцы',
          add_head: 'Добавить заголовок',
          delete_head: 'Удалить заголовок',
          title: 'Название',
          image_position: 'Позиция',
          none: 'Нет',
          left: 'Слева',
          right: 'Справа',
          image_web_link: 'Ссылка на картинку',
          text: 'Текст',
          mailto: 'Email',
          web: 'URL',
          video_html_code: 'Встроенное видео',
          file: 'Вставить файл',
          upload: 'Загрузить',
          download: 'Скачать',
          choose: 'Выбрать',
          or_choose: 'Или выбрать',
          drop_file_here: 'Кинуть файл сюда',
          align_left: 'Выровнять текст по левому краю',
          align_center: 'Выровнять текст по центру',
          align_right: 'Выровнять текст по правому краю',
          align_justify: 'Выровнять текст по ширине',
          horizontalrule: 'Вставить горизонтальную линейку',
          deleted: 'Удалено',
          anchor: 'Якорь',
          link_new_tab: 'Открыть ссылку в новом окне',
          underline: 'Подчеркнутый',
          alignment: 'Выравнивание',
          filename: 'Имя (опционально)',
          edit: 'Редактировать'
        }
      }
    }
  );
});
