
    var dialog = document.querySelector('dialog');
    var showDialogButton = document.querySelector('#show-dialog');
    if (! dialog.showModal) {
      dialogPolyfill.registerDialog(dialog);
    }
    showDialogButton.addEventListener('click', function() {
      dialog.showModal();
    });
    dialog.querySelector('.close').addEventListener('click', function() {
      dialog.close();
    });

    (function() {
        'use strict';
        var snackbarContainer = document.querySelector('#demo-snackbar-example');
        var showSnackbarButton = document.querySelector('#login_btn');
        var handler = function(event) {
            showSnackbarButton.style.backgroundColor = '';
        };
        showSnackbarButton.addEventListener('click', function() {
            'use strict';
            showSnackbarButton.style.backgroundColor = '#' +
                Math.floor(Math.random() * 0xFFFFFF).toString(16);
            var data = {
                message: '플라밍GO에 오신걸 환영합니다',
                timeout: 2000,
                actionHandler: handler,
                actionText: 'Undo'
            };
            snackbarContainer.MaterialSnackbar.showSnackbar(data);
        });
    }());