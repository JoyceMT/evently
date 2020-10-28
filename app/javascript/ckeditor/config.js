CKEDITOR.editorConfig = function( config )
  {
// Toolbar groups configuration.
    config.toolbar_mini = [
      { items: [ ‘Bold’, ‘Italic’, ‘Underline’, ‘Strike’] },
      { name: ‘paragraph’, groups: [ ‘list’, ‘indent’, ‘blocks’, ‘align’, ‘bidi’ ], items: [ ‘NumberedList’, ‘BulletedList’, ‘-‘, ‘Blockquote’ ] },
    ];
  };
