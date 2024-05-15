var gi_flag=1;
var cd_flag=1;
var de_flag=1;
var vc_flag=1;
var md_flag=1;

var gij_flag = 1;
var cdj_flag = 1;
var dej_flag = 1;
var vij_flag = 1;

function getDetail(code){
    $.ajax({
        type: 'POST',
        url: '/detail',
        async: true,
        data: { "code" : code },
        success: function (data) {
            var modal = $("#detailModal");
            //modal.empty();
            //modal.append(data);
            //modal.find(".main_subject").empty();
            //modal.find(".main_subject").append(data.subjectPreList.main_subject);
            //alert(data.subjectPreList.main_subject);
            modal.find(".course_cont").empty();
            modal.find(".course_cont").append(data.subjectDetailList[0].name);
            modal.find(".keyword_cont").empty();
            if (data.subjectDetailList[0].original_language == 1){
                modal.find(".keyword_cont").append("English course");
            }
            else{modal.find(".keyword_cont").append()};
            modal.find(".detail_cont").empty();
            modal.find(".detail_cont").append(data.subjectDetailList[0].detail);
            modal.find(".tools_cont").empty();
            modal.find(".pre_cont").empty();
            modal.find(".related_cont").empty();
            for(var i=0; i<data.subjectDetailList.length; i++)
            {
                modal.find(".tools_cont").append(data.subjectDetailList[i].joint_department);
                modal.find(".pre_cont").append(data.subjectDetailList[i].pre_subject_code);
                modal.find(".related_cont").append(data.subjectDetailList[i].relate_subject_code);
                if( i != (data.subjectDetailList.length-1)){
                    if (data.subjectDetailList[i].joint_department != null){modal.find(".tools_cont").append(",");}
                    if (data.subjectDetailList[i].pre_subject_code != null){modal.find(".pre_cont").append(",");}
                    if (data.subjectDetailList[i].relate_subject_code != null){modal.find(".related_cont").append(",");}
                }
            }
            modal.find(".modal_wrap").attr("style", "display:flex");
            modal.find(".modal_side_wrap").attr("style", "display:flex");
            modal.find(".black_bg").attr("style", "display:block");

        },
        complete: function() {
        },
        error:function(request, status, error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

        }
    });
}

function trackClick(carrer_path_id){
    var ch_td;
    var core = new Array();
    var support = new Array();
    var page_id;

    reset_color();

    $.ajax({
        type: 'POST',
        url: '/track',
        async: true,
        data: {"carrer_path_id" : carrer_path_id},
        dataType : 'json',
        success: function (data) {
            for(var i=0; i<data.subjectTrackList.length; i++)
            {
                if(data.subjectTrackList[i].type=='core')
                {
                    core.push('tr'+data.subjectTrackList[i].row_id+'td'+data.subjectTrackList[i].col_id);
                }
                if(data.subjectTrackList[i].type=='support')
                {
                    support.push('tr'+data.subjectTrackList[i].row_id+'td'+data.subjectTrackList[i].col_id);
                }
            }
            if (carrer_path_id == "gi_jobs"){
                page_id = 133;
            }else if(carrer_path_id == "cd_jobs"){
                page_id = 130;
            }else if(carrer_path_id == "de_jobs"){
                page_id = 129;
            }else if(carrer_path_id == "vc_jobs"){
                page_id = 131;
            }else if(carrer_path_id == "fe_program"){
                page_id = 100;
            }


            switch(page_id)
            {
                /* 전공 */
                case 100:
                    cdClick(core,support);
                    break;
                /* 직업*/
                case 129:
                    deJobsClick(core,support);
                    break;
                case 130:
                    cdJobsClick(core,support);
                    break;
                case 131:
                    viJobsClick(core,support);
                    break;
                case 132:
                    mdClick(core,support);
                    break;
                case 133:
                    giJobsClick(core,support);
                    break;
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

function reset_color(){
    var ch_td;
    var ch_cls;

    for(i=2;i<=16;i++)
    {
        for(j=1;j<=8;j++)
        {
            str = "tr"+i+"td"+j;

            if(document.getElementById(str)){
                ch_td = document.getElementById(str);

                if(ch_td!=null){
                    if (ch_td.className == "mandatory_span"){
                        ch_td.style.background = "#d0d0d0";
                    }else{
                        ch_td.style.background = "";
                    }
                }
            }else{
            }

            //alert(subjects[i]);
            console.log(document.querySelector('#cs_'.concat(str)));
            var cs = document.querySelector('#cs_'.concat(str));
            //var cs = document.querySelector('#cs_tr8td8');

            if (cs!=null && cs.classList.contains('show')) {
                cs.classList.remove('show');
            }
        }
    }
}

/*
function giClick(core,support){
    var ch_td;

    reset_color();

	var c_mark = document.querySelector('.c_mark');
	var s_mark = document.querySelector('.s_mark');
	c_mark.style.background = "#EA8953";
	s_mark.style.background = "#f3ba9b";

    //if(gi_flag>0)
    //{
        for(i=0;i<gi_core.length;i++)
        {
            ch_td = document.getElementById(gi_core[i]);
            ch_td.style.background = "#EA8953";
			var cs = document.querySelector('#cs_'.concat(gi_core[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(gi_core[i]));
			cs.classList.toggle('show');
			cs.style.background = "#EA8953";
			cs_text.innerText="C";
        }

        for(i=0;i<gi_support.length;i++)
        {
            ch_td = document.getElementById(gi_support[i]);
            ch_td.style.background = "#f3ba9b";
			var cs = document.querySelector('#cs_'.concat(gi_support[i]));
			var cs_text = document.querySelector('.cs_txt_'.concat(gi_support[i]));
			cs.classList.toggle('show');
			cs.style.background = "#f3ba9b";
			cs_text.innerText="S";
        }
    if(gi_flag<0)
    {
        reset_color();
    }
    gi_flag*=-1;

    cd_flag=1;
    de_flag=1;
	gij_flag=1;
	dej_flag=1;
	cdj_flag=1;
	vij_flag=1;
}
*/

function cdClick(cd_core,cd_support){

    reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#00C7FF";
    s_mark.style.background = "#9eeaff";

    var ch_td;

    if(cd_flag>0)
    {
        for(i=0;i<cd_core.length;i++)
        {
            ch_td = document.getElementById(cd_core[i]);
            ch_td.style.background = "#00C7FF";
            var cs = document.querySelector('#cs_'.concat(cd_core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(cd_core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#00C7FF";
            cs_text.innerText="C";
        }

        for(i=0;i<cd_support.length;i++)
        {
            ch_td = document.getElementById(cd_support[i]);
            ch_td.style.background = "#9eeaff";
            var cs = document.querySelector('#cs_'.concat(cd_support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(cd_support[i]));
            cs.classList.toggle('show');
            cs.style.background = "#9eeaff";
            cs_text.innerText="S";
        }
    }
    if(cd_flag<0)
    {
        reset_color();
    }
    cd_flag*=-1;

    gi_flag=1;
    de_flag=1;
    gij_flag=1;
    dej_flag=1;
    cdj_flag=1;
    vij_flag=1;
}

// 영업, 대체투자
function giJobsClick(core,support){
    reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#AA87E6";
    s_mark.style.background = "#DFCDFE";

    var ch_td;

    if(gij_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#AA87E6";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#AA87E6";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#DFCDFE";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            cs.style.background = "#DFCDFE";
            cs_text.innerText="S";
        }
    }
    if(gij_flag<0)
    {
        reset_color();
    }
    gij_flag*=-1;

    cd_flag=1;
    gi_flag=1;
    de_flag=1;
    dej_flag=1;
    cdj_flag=1;
    vij_flag=1;
}

// 운용, 애널리스트
function cdJobsClick(core,support){
    reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#E66E71";
    s_mark.style.background = "#FFCFD0";

    var ch_td;

    /*if(cdj_flag>0)
    {
        for(i=0;i<mandatory.length;i++)
        {
            ch_td = document.getElementById(mandatory[i]);
            ch_td.style.background = "#E66E71";
        }
    }*/
    if(cdj_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#E66E71";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#E66E71";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#FFCFD0";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            cs.style.background = "#FFCFD0";
            cs_text.innerText="S";
        }
    }
    if(cdj_flag<0)
    {
        reset_color();
    }
    cdj_flag*=-1;

    cd_flag=1;
    gi_flag=1;
    de_flag=1;
    gij_flag=1;
    dej_flag=1;
    vij_flag=1;
}

// 계리사 회계사 등
function deJobsClick(core,support){
    reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#E68739";
    s_mark.style.background = "#FFD2AC";

    var ch_td;

    if(dej_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#E68739";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#E68739";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#FFD2AC";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            cs.style.background = "#FFD2AC";
            cs_text.innerText="S";
        }
    }
    if(dej_flag<0)
    {
        reset_color();
    }
    dej_flag*=-1;

    cd_flag=1;
    gi_flag=1;
    de_flag=1;
    gij_flag=1;
    cdj_flag=1;
    vij_flag=1;
}



function viJobsClick(core,support){
    reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#71D3E6";
    s_mark.style.background = "#D9F9FF";

    var ch_td;

    if(vij_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#71D3E6";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#71D3E6";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#D9F9FF";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            cs.style.background = "#D9F9FF";
            cs_text.innerText="S";
        }
    }
    if(vij_flag<0)
    {
        reset_color();
    }
    vij_flag*=-1;

    cd_flag=1;
    gi_flag=1;
    de_flag=1;
    gij_flag=1;
    dej_flag=1;
    cdj_flag=1;
}

/*
    area 클릭 이벤트
*/
const home = document.getElementById("title");
home.addEventListener("click", reset_color);

/* 금융 TRACK
const gi = document.getElementById("gi_but");
gi.addEventListener("click", giClick);
*/
/*
const cd = document.getElementById("cd_but");
cd.addEventListener("click", cdClick);

const gi_jobs = document.getElementsByClassName("gi_jobs");
for(i=0;i<gi_jobs.length;i++){
    gi_jobs[i].addEventListener("click", giJobsClick);
}

const cd_jobs = document.getElementsByClassName("cd_jobs");
for(i=0;i<cd_jobs.length;i++){
    cd_jobs[i].addEventListener("click", cdJobsClick);
}

const de_jobs = document.getElementsByClassName("de_jobs");
for(i=0;i<de_jobs.length;i++){
    de_jobs[i].addEventListener("click", deJobsClick);
}

const vi_jobs = document.getElementsByClassName("vc_jobs");
for(i=0;i<vi_jobs.length;i++){
    vi_jobs[i].addEventListener("click", viJobsClick);
}
*/
