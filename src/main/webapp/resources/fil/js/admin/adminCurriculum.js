
var pos = 0;
function HighlightTD(target){
    if(pos){
        pos.style.borderColor = '#C2C2C2';
    }
    target.style.borderColor = '#3462DC';
    pos = target;
}

function getSubjectInfo(code){
    $.ajax({
            type: 'POST',
            url: '/admin/subject/SubjectInfo',
            async: true,
            data: {"code": code},
            success: function (data) {
                if( code != "") {
                    setSubjectInfoReset()
                    if (data.subjectDetailList[0] != null) {
                        document.getElementById("subject_code").value = (data.subjectDetailList[0].subject);
                        document.getElementById("subject_name").value = (data.subjectDetailList[0].name);
                        document.getElementById("subject_semester").value = (data.subjectDetailList[0].semester);
                        document.getElementById("subject_detail").value = (data.subjectDetailList[0].detail);
                        /* 행에 -1을 해줘야함*/
                        document.getElementById("row").value = (data.subjectPositionList[0].row_id - 1);
                        document.getElementById("column").value = (data.subjectPositionList[0].col_id);
                        if (data.subjectDetailList[0].is_mandatory == 1) {
                            document.getElementById("major").checked = true;
                            document.getElementById("major").value = "1";
                        } else {
                                document.getElementById("major").checked = null;
                                document.getElementById("major").value = "0";
                        }
                        if (data.subjectDetailList[0].original_language == 1) {
                            document.getElementById("origin").checked = true;
                            document.getElementById("origin").value = "1";
                        } else {
                                document.getElementById("origin").checked = null;
                                document.getElementById("origin").value = "0";
                        }

                        var ps_list = ["presubject_select1", "presubject_select2", "presubject_select3"];
                        var rs_list = ["related_subject_select1", "related_subject_select2", "related_subject_select3"];
                        var jt_list = ["joint1", "joint2", "joint3"];

                        for (var k = 0; k < 3; k++) {

                            document.getElementById(ps_list[k]).options[0].selected = true;
                            document.getElementById(rs_list[k]).options[0].selected = true;
                            document.getElementById(jt_list[k]).value = null;

                        }
                        var ps_code = [];
                        var rs_code = [];
                        var jt_dpt = [];

                        for (var i = 0; i < data.subjectDetailList.length; i++) {
                            if (data.subjectDetailList[i].pre_subject_code != null) {
                                ps_code[ps_code.length] = data.subjectDetailList[i].pre_subject_code;
                            }
                            if (data.subjectDetailList[i].relate_subject_code != null) {
                                rs_code[rs_code.length] = data.subjectDetailList[i].relate_subject_code;
                            }
                            if (data.subjectDetailList[i].joint_department != null) {
                                jt_dpt[jt_dpt.length] = data.subjectDetailList[i].joint_department;
                            }
                        }

                        Array.from(new Set(ps_code));
                        Array.from(new Set(rs_code));
                        Array.from(new Set(jt_dpt));

                        for (var p = 0; p < ps_code.length; p++) {
                            const ps = document.getElementById(ps_list[p]);
                            for (var i = 0; i < ps.options.length; i++) {
                                if (ps.options[i].value == (ps_code[p])) {
                                    ps.options[i].selected = true;
                                }
                            }
                        }
                        for (var r = 0; r < rs_code.length; r++) {
                            const rs = document.getElementById(rs_list[r]);
                            for (var i = 0; i < rs.options.length; i++) {
                                if (rs.options[i].value == (rs_code[r])) {
                                    rs.options[i].selected = true;
                                }
                            }
                        }
                        for (var j = 0; j < jt_dpt.length; j++) {
                            document.getElementById(jt_list[j]).value = jt_dpt[j];
                        }

                    } else {
                        alert("과목이 존재하지 않습니다.");
                    }
                }else{
                    alert("과목 코드를 입력하세요.");
                }
                }
                ,
        complete: function() {
        },
        error:function(request, status, error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

        }
    });
}
function setSubjectInfoReset(){
    document.getElementById("subject_name").value = null;
    document.getElementById("subject_semester").value = null;
    document.getElementById("subject_detail").value = null;
    /* 행에 -1을 해줘야함*/
    document.getElementById("row").value = null;
    document.getElementById("column").value = null;
    document.getElementById("major").checked = null;
    document.getElementById("origin").checked = null;

    var ps_list = ["presubject_select1","presubject_select2","presubject_select3"];
    var rs_list = ["related_subject_select1", "related_subject_select2", "related_subject_select3"];
    var jt_list = ["joint1","joint2","joint3"];

    for(var k =0 ; k<3; k++){

        document.getElementById(ps_list[k]).options[0].selected = true;
        document.getElementById(rs_list[k]).options[0].selected = true;
        document.getElementById(jt_list[k]).value = null;

    }
}

function SubmitInfoButton(){
    $.ajax({
        type: 'POST',
        url: '/admin/subject/SubjectInfo',
        async: true,
        data: {"code": document.getElementById("subject_code").value},
        success: function (data) {
            /*코드 정보가 입력이 되어 있어야 실행*/
            if (document.getElementById("subject_code").value != "") {
                /*DB에 과목 정보가 있을 경우*/
                if (data.subjectDetailList[0] != null) {
                    UpdateSubjectInfo();
                }
                /*DB에 과목 정보가 없을 경우*/
                else if (data.subjectDetailList[0] == null) {
                    AddSubjectInfo();
                }
                /*위치 정보가 입력이 되어 있어야 실행*/
                if ((document.getElementById("column").value != "") && (document.getElementById("row").value != "")) {
                    /*DB에 과목 위치 정보가 있을 경우*/
                    if (data.subjectPositionList[0] != null) {
                        if ((data.subjectPositionList[0].col_id != document.getElementById("column").value) || (data.subjectPositionList[0].row_id != parseInt(Number(document.getElementById("row").value) + 1))) {
                            UpdatePositionInfo();
                        }
                    }
                    /*DB에 과목 위치 정보가 없을 경우*/
                    else if (data.subjectPositionList[0] == null) {
                        AddPositionInfo();
                    }
                    /*위치정보가 둘다 NULL일 경우*/
                } else if ((document.getElementById("column").value == "") && (document.getElementById("row").value == "")) {
                    /*DB의 위치 삭제*/
                    if (data.subjectPositionList[0] != null) {
                        DeletePositionInfo();
                    }
                }
            }else{
                alert("과목 코드를 입력하세요.");
            }
        },
        complete: function() {
        },
        error:function(request, status, error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

        }
    });
}
function UpdateSubjectInfo(){
    alert("과목 수정 : "+document.getElementById('subject_code').value);
    var code = document.getElementById("subject_code").value;
    $.ajax({
        type: 'POST',
        url: '/admin/subject/SubjectUpdate',
        async: true,
        data: {
            "code": code,
            "name":document.getElementById("subject_name").value,
            "semester":document.getElementById("subject_semester").value,
            "detail":document.getElementById("subject_detail").value,
            "is_mandatory":document.getElementById("major").value,
            "original_language":document.getElementById("origin").value

        },
        success: function (data) {
            $("#mil_subject_table_wrap").load("/admin/subject #mil_subject_table_wrap");
        }
    });
}
function AddSubjectInfo(){
    alert("과목 추가 : "+document.getElementById('subject_code').value);
    var code = document.getElementById("subject_code").value;
    $.ajax({
        type: 'POST',
        url: '/admin/subject/SubjectAdd',
        async: true,
        data: {
            "code": code,
            "name":document.getElementById("subject_name").value,
            "semester":document.getElementById("subject_semester").value,
            "detail":document.getElementById("subject_detail").value,
            "is_mandatory":document.getElementById("major").value,
            "original_language":document.getElementById("origin").value
        },
        success : function (data){
            $("#mil_subject_table_wrap").load("/admin/subject #mil_subject_table_wrap");
        }
    });
}

function DeleteSubjectInfo(){
    alert("과목 삭제 : "+document.getElementById('subject_code').value);
    var code = document.getElementById("subject_code").value;
    $.ajax({
        type: 'POST',
        url: '/admin/subject/SubjectADelete',
        async: true,
        data: {
            "code": code,
        },
        success : function (data){
            $("#mil_subject_table_wrap").load("/admin/subject #mil_subject_table_wrap");
        }
    });
}



function UpdatePositionInfo(){
    alert("위치 수정 : "+document.getElementById('subject_code').value);
    var code = document.getElementById("subject_code").value;
    $.ajax({
        type: 'POST',
        url: '/admin/subject/PositionUpdate',
        async: true,
        data: {
            "code" : code,
            "row_id" : parseInt(Number(document.getElementById("row").value) +1),
            "col_id" :document.getElementById("column").value
        },
        success : function (data){
            $("#mil_subject_table_wrap").load("/admin/subject #mil_subject_table_wrap");
        }
    });
}
function AddPositionInfo(){
    alert("위치 추가 : "+document.getElementById('subject_code').value);
    var code = document.getElementById("subject_code").value;
    $.ajax({
        type: 'POST',
        url: '/admin/subject/PositionAdd',
        async: true,
        data: {
            "code" : code,
            "row_id" : parseInt(Number(document.getElementById("row").value) +1),
            "col_id" :document.getElementById("column").value
        },
        success : function (data){
            $("#mil_subject_table_wrap").load("/admin/subject #mil_subject_table_wrap");
        }
    });
}

function DeletePositionInfo(){
    alert("위치 삭제 : "+document.getElementById('subject_code').value);
    var code = document.getElementById("subject_code").value;
    $.ajax({
        type: 'POST',
        url: '/admin/subject/PositionDelete',
        async: true,
        data: {
            "code": code,
        },
        success : function (data){
            $("#mil_subject_table_wrap").load("/admin/subject #mil_subject_table_wrap");
        }
    });
}

function DeletePositionButton(){
    $.ajax({
        type: 'POST',
        url: '/admin/subject/SubjectInfo',
        async: true,
        data: {"code": document.getElementById("subject_code").value},
        success: function (data) {
            /*코드 정보가 입력이 되어 있어야 실행*/
            if (document.getElementById("subject_code").value != ""){
                if (data.subjectPositionList[0] != null){
                        DeletePositionInfo();
                }else{
                    alert("과목 위치정보가 존재하지 않습니다.");
                }
            }else{
                alert("과목 코드를 입력하세요.");
            }
        },
        complete: function() {
        },
        error:function(request, status, error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

        }
    });
}
function DeleteSubjectButton() {
    $.ajax({
        type: 'POST',
        url: '/admin/subject/SubjectInfo',
        async: true,
        data: {"code": document.getElementById("subject_code").value},
        success: function (data) {
            /*코드 정보가 입력이 되어 있어야 실행*/
            if (document.getElementById("subject_code").value != "") {
                if (data.subjectDetailList[0] != null) {
                    DeleteSubjectInfo();
                }else{
                    alert("과목 정보가 존재하지 않습니다.");
                }
            }else{
                alert("과목 코드를 입력하세요.");
            }
        },
        complete: function () {
        },
        error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
            console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);

        }
    });
}

