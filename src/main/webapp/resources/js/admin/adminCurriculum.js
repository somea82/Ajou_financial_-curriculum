/*
* parameter
* -. page_id : 교과과정 코드
* */
function deleteCurriculum(page_id){
    alert("삭제!");
    /*$.ajax({
        type: 'DELETE',
        url: '/admin/curriculum/delete',
        async: true,
        data: { "page_id" : page_id
        }
    });*/
    $.ajax({
        type: "POST",
        url: '/admin/curriculum/delete',
        async: true,
        data: { "page_id" : page_id
        },
        success : function (data){
            $("#admin_page_content").load("/admin/curriculum #admin_page_content");
        }
    });
}



var pos = 0;
function HighlightTD(target){
    if(pos){
        pos.style.borderColor = '#C2C2C2';
    }
    target.style.borderColor = '#3462DC';
    pos = target;
}
function saveSubject(){
    alert("정보 저장 완료");

}

function deleteSubject(){
    alert("정보 삭제 완료");
}