function getMentorDetail(id){
    alert("멘토"+id);
    if(id >0) {
        $.ajax({
            type: 'POST',
            url: '/admin/mentor/detail',
            async: true,
            data: {
                "id": id
            },
            success: function (data) {
                //$("#create_mentor_form").load("/admin/mentor/detail #create_mentor_form");
                document.getElementById('mentor_name').value = data.mentorDetailList[0].name;
                document.getElementById('mentor_industry_name').value = data.mentorDetailList[0].industry_name;
                document.getElementById('mentor_email').value = data.mentorDetailList[0].email;
                document.getElementById("mentor_area").value = data.mentorDetailList[0].area;
            }
        });
    }
    else{
        document.getElementById('mentor_name').value = "";
        document.getElementById('mentor_industry_name').value = "";
        document.getElementById('mentor_email').value = "";
        document.getElementById("mentor_area").value = "";
    }
}

function submitMentorInfo(){
    alert("멘토"+document.getElementById('set_mentor').value);
    var id = document.getElementById('set_mentor').value;
    if(id >0) {
        $.ajax({
            type: 'POST',
            url: '/admin/mentor/update',
            async: true,
            data: {
                "id": id,
                "name":document.getElementById('mentor_name').value,
                "industry_name":document.getElementById('mentor_industry_name').value,
                "email":document.getElementById('mentor_email').value,
                "area":document.getElementById("mentor_area").value
            },
            success: function (data) {
                $("#create_mentor_form").load("/admin/mentor/detail #create_mentor_form");
            }
        });
    }
    else{
        alert("add");
        $.ajax({
            type: 'POST',
            url: '/admin/mentor/add',
            async: true,
            data: {
                "name":document.getElementById('mentor_name').value,
                "industry_name":document.getElementById('mentor_industry_name').value,
                "email":document.getElementById('mentor_email').value,
                "area":document.getElementById("mentor_area").value
            },
            success: function (data) {
                $("#create_mentor_form").load("/admin/mentor/detail #create_mentor_form");
            }
        });
    }
}
