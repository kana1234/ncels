﻿
function InitializeSizeAdministrativeMain(name) {
    var gridElement = $("#pwContentRightId" + name);
    gridElement.height($(window).height() - 120);
}

function InitializeDataAdministrativeMain(name, repeatId) {
    var validator = $("#admDocForm" + name).kendoValidator().data("kendoValidator");

    if (repeatId == '')
        repeatId = 'null';

    var viewModel = kendo.observable({
        document: {},
        change: function () {
            validator.validate();
            this.set("hasChanges", true);
        },
     

        initButton: function () {

            var state = this.get("document.StateType");
            if (state == 0) {
                this.set("hasRegister", true);
            } else {
                this.set("hasRegister", false);
            }
            if (state == 1) {
                this.set("hasReview", true);
            } else {
                this.set("hasReview", false);
            }
            if (state > 1 && state < 9) {
                this.set("hasExecute", true);
            } else {
                this.set("hasExecute", false);
            }
            if (state > 0) {
                this.set("hasPrint", true);
            } else {
                this.set("hasPrint", false);
            }
            if (state > 0 && state < 9) {

                this.set("hasExtensionExecution", true);
            } else {
                this.set("hasExtensionExecution", false);
            }
        },
        hasChanges: false,
        hasRegister: false,
        register: function (e) {
            e.preventDefault();
            if (validator.validate()) {
                this.set("hasChanges", false);
                registerData();
            };

        },
        hasReview: false,
        review: function (e) {
            e.preventDefault();
            reviewData();
        },
        hasExecute: false,
        execute: function (e) {
            e.preventDefault();
            excludeData();
        },
        hasPrint: false,
        print: function (e) {
            e.preventDefault();
            PrintDocumetnt(this.get("document.Id"));
        },
        deleteDoc: function (e) {
            e.preventDefault();
            DeleteDocumetnt(this.get("document.Id"));
        },
        hasExtensionExecution: false,
        extensionExecution: function (e) {
            e.preventDefault();
            extensionExecution();
        },
        hasSave: false,
        save: function (e) {
            e.preventDefault();

            this.set("hasChanges", false);
            sendData();
        }
    });

    function loadDocument() {
        kendo.ui.progress($('#loader' + name), true);
        $.ajax({
            type: 'get',
            url: '/AdministrativeMainDoc/DocumentRead?Id=' + name + '&repeatId=' + repeatId,
            contentType: 'application/json; charset=utf-8',
            success: function (result) {
                result = JSON.parse(result);
                // alert(JSON.stringify(result));
                viewModel.set("document", result);
                viewModel.initButton();
                //viewModel.person = JSON.stringify(result);
                InitializePropertyAdministrativeMain(name, viewModel);
                kendo.bind($("#admDocForm" + name), viewModel);
                kendo.ui.progress($('#loader' + name), false);
            },
            complete: function () {
                //  alert('Success! User Loaded!');
                InitializeStatusBar(name, viewModel);
            }
        });
    }
    function excludeData() {
        var window = $("#TaskCommandWindow");
        window.kendoWindow({
            width: "550px",
            height: "auto",
            modal: true, resizable: false,
            close: onCloseCommandWindow,
            actions: ["Close"]
        });

        window.data("kendoWindow").title('Исполнение документа');
        window.data("kendoWindow").setOptions({
            width: 550,
            height: 'auto'
        });
        window.data("kendoWindow").refresh('/AdministrativeMainDoc/Execution?id=' + viewModel.get("document.Id"));
        window.data("kendoWindow").viewModel = viewModel;
        window.data("kendoWindow").center();
        window.data("kendoWindow").open();
    };
    function registerData() {
        kendo.ui.progress($('#loader' + name), true);

        var json = JSON.stringify(viewModel.get('document'));


        $.ajax({
            type: 'POST',
            url: '/AdministrativeMainDoc/DocumentRegister',
            data: json,
            contentType: 'application/json; charset=utf-8',
            success: function (result) {
                result = JSON.parse(result);
                if (result.State == true) {
                    viewModel.set("document", result.document);
                    viewModel.initButton();
                    CardRegisterSuccess(result.document.Number, result.document.DocumentDate);
                };
            },
            complete: function () {
                kendo.ui.progress($('#loader' + name), false);
            }
        });
    };
    function extensionExecution() {
        var window = $("#TaskCommandWindow");
        window.kendoWindow({
            width: "550px",
            height: "auto",
            modal: true, resizable: false,
            close: onCloseCommandWindow,
            actions: ["Close"]
        });

        window.data("kendoWindow").title('Продлить исполнение');
        window.data("kendoWindow").setOptions({
            width: 550,
            height: 'auto'
        });
        window.data("kendoWindow").refresh('/AdministrativeMainDoc/ExtensionExecution?id=' + viewModel.get("document.Id"));

        window.data("kendoWindow").center();
        window.data("kendoWindow").open();
    }
    function reviewData() {
        kendo.ui.progress($('#loader' + name), true);

        var json = JSON.stringify(viewModel.get('document'));


        $.ajax({
            type: 'POST',
            url: '/AdministrativeMainDoc/DocumentReview',
            data: json,
            contentType: 'application/json; charset=utf-8',
            success: function (result) {
                result = JSON.parse(result);
                if (result.State == true) {
                    viewModel.set("document", result.document);
                    viewModel.initButton();
                    CardReviewSuccess();
                };
            },
            complete: function () {
                kendo.ui.progress($('#loader' + name), false);
            }
        });
    };
    function sendData() {
        kendo.ui.progress($('#loader' + name), true);

        var json = JSON.stringify(viewModel.get('document'));


        $.ajax({
            type: 'POST',
            url: '/AdministrativeMainDoc/DocumentUpdate',
            data: json,
            contentType: 'application/json; charset=utf-8',
            success: function (result) {
                if (result == 'True') {
                    CardSaveSuccess();

                };
            },
            complete: function () {
                kendo.ui.progress($('#loader' + name), false);
            }
        });
    };

    loadDocument();

}

function InitializePropertyAdministrativeMain(name, viewModel) {
    var dataMonitoringType = [
      // { text: "В работу", value: "0" },
       { text: "Не контрольный", value: "1" },
       { text: "Контроль", value: "2" },
       { text: "Особый контроль", value: "3" },
       { text: "До контроль", value: "4" }
    ];

    var initialFiles = viewModel.get('document.AttachFiles');

    $("#files" + name).kendoUpload({
        localization: {
            select: 'Выбрать файл...',
            remove: '',
            cancel: '',
            headerStatusUploading: "Загрузка...",
            headerStatusUploaded: "Загружено!"
        },
        // multiple: true,
        async: {
            saveUrl: "/Upload/save",
            removeUrl: "/Upload/remove",
            autoUpload: true
        }
        , upload: function (e) {

            e.data = { documentId: viewModel.get('document.AttachPath') };
        },
        remove: function (e) {
            e.data = { documentId: viewModel.get('document.AttachPath') };
        },
        complete: function (e) {

            var files = $("#files" + name).closest(".k-upload").find("a");
            $.each(files, function (i, file) {
                file.onclick = function () {
                    fileView(viewModel.get('document.AttachPath'), file.getAttribute('fileName'));
                };
            });
            var filesButton = $("#files" + name).closest(".k-upload").find("button");

            $.each(filesButton, function (i, file) {
                if (file.className == 'file-edit') {
                    file.onclick = function () {

                        fileEdit(viewModel.get('document.AttachPath'), file.getAttribute('fileName'));

                    };ы
                };
            });
            var filesDownload = $("#files" + name).closest(".k-upload").find("button");
            $.each(filesDownload, function (i, file) {
                if (file.className == 'file-download') {
                    file.onclick = function () {
                        fileDownload(viewModel.get('document.AttachPath'), file.getAttribute('fileName'));
                    };
                };
            });
            
        },
        select: function (e) {

        },
        template: kendo.template($('#fileTemplate').html()),
        files: initialFiles
    });

   

    $("#ExecutionDate" + name).kendoDatePicker();

   

    $("#Number" + name).kendoMaskedTextBox({ mask: "" }).attr("readonly", true);

    $("#DocumentDate" + name).kendoDateTimePicker();



    $("#ExecutorsId" + name).kendoMultiSelect({
        dataTextField: "Name",
        dataValueField: "Id",
        filter: "startswith",
        autoBind: false,

        dataSource: {
            transport: {
                read: {
                    url: '/Reference/ListEmploye'

                }
            }
        }
    });

    $("#ReadersId" + name).kendoMultiSelect({
        dataTextField: "Name",
        dataValueField: "Id",
        filter: "contains",
        autoBind: false,

        dataSource: {
            transport: {
                read: {
                    url: '/Reference/ListEmployeAll'

                }
            }
        }
    });

    $("#Summary" + name).kendoAutoComplete({
        filter: "contains",
     //   dataTextField: "Name",
        placeholder: "Введите текст...",

        autoBind: false,
        dataSource: {

            transport: {
                read: {
                    url: '/Reference/ListAutoComplete',
                    data: { text: "NoteTypeDictionary" }
                }
            }
        }
    });

    $("#SignerId" + name).kendoMultiSelect({
        dataTextField: "Name",
        dataValueField: "Id",
        maxSelectedItems: 1,
        filter: "contains",
        autoBind: false,

        dataSource: {
            transport: {
                read: {
                    url: '/Reference/ListEmploye'

                }
            }
        }
    });
    
    $("#AdministrativeTypeDictionaryId" + name).kendoMultiSelect({
        dataTextField: "Name",
        dataValueField: "Id",
        maxSelectedItems: 1,
        filter: "contains",
        autoBind: false,
        dataSource: {

            transport: {
                read: {
                    url: '/Reference/List',
                    data: { text: "AdministrativeMainTypeDictionary" }
                }
            }
        }
    });

    $("#LanguageDictionaryId" + name).kendoMultiSelect({
        dataTextField: "Name",
        dataValueField: "Id",
        maxSelectedItems: 1,
        filter: "contains",
        autoBind: false,
        dataSource: {

            transport: {
                read: {
                    url: '/Reference/List',
                    data: { text: "LanguageDictionary" }
                }
            }
        }
    });



    $("#Counters" + name).kendoMaskedTextBox();

        $("#PageCount" + name).kendoNumericTextBox({format: "#"});

        $("#CopiesCount" + name).kendoNumericTextBox({format: "#"});

   

    $("#CreatedUserId" + name).kendoMultiSelect({
        dataTextField: "Name",
        dataValueField: "Id",
        maxSelectedItems: 1,
        filter: "contains",
        autoBind: false,

        dataSource: {
            transport: {
                read: {
                    url: '/Reference/ListEmploye'

                }
            }
        }
    });
}