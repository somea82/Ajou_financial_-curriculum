var major_flag = 0;
var math_flag = 0;
var major_list = [];
var find_value = 0;
var m_list =new Array();
var mathList = [];
var flag = null;

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
                modal.find(".pre_cont").append(data.subjectDetailList[i].pre_subject_name);
                modal.find(".related_cont").append(data.subjectDetailList[i].relate_subject_name);
                if( i != (data.subjectDetailList.length-1)){
                    if (data.subjectDetailList[i].joint_department != null){modal.find(".tools_cont").append(",");}
                    if (data.subjectDetailList[i].pre_subject_name != null){modal.find(".pre_cont").append(",");}
                    if (data.subjectDetailList[i].relate_subject_name != null){modal.find(".related_cont").append(",");}
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

function trackClick(carrer_path_id, small_category,c_color){
    var ch_td;
    var core = new Array();
    var support = new Array();
    var page_id;
    var core_c = c_color;

    $.ajax({
        type: 'POST',
        url: '/track',
        async: true,
        data: { "carrer_path_id" : carrer_path_id , "small_category" : small_category},
        dataType : 'json',
        success: function (data) {
            if(flag == small_category)
            {
                flag = null;
                reset_color();
            }
            else{
                /*전공의 경우, 전필이 다 다름*/
                if (data.subjectTrackList[0].category == 'major'){
                    for(var i=0; i<data.subjectTrackList.length; i++)
                    {
                        if((data.subjectTrackList[i].type=='core') && (data.subjectTrackList[i].small_category==small_category))
                        {
                            core.push('tr'+data.subjectTrackList[i].row_id+'td'+data.subjectTrackList[i].col_id);
                        }
                        if(data.subjectTrackList[i].type=='support')
                        {
                            support.push('tr'+data.subjectTrackList[i].row_id+'td'+data.subjectTrackList[i].col_id);
                        }
                    }
                    /*
                    majorClick(core,support,core_c,support_c);
                     */
                    if (m_list.length == 0){
                        m_list.push(...core);
                        m_list.push(...support);
                    }
                    majorLine(core,support,core_c);
                    major_flag = 1;

                    for (var i = 0; i < major_list.length; i++) {
                        if (major_list[i].CPI == carrer_path_id){
                            find_value = 1;
                        }
                    }

                    if (find_value == 0){
                        var major_object = new Object();
                        major_object.CPI = carrer_path_id;
                        major_object.SC = small_category;
                        major_object.CC = c_color;
                        major_list.push(major_object);
                    } else{
                        find_value = 0;
                    }

                }
                /*커리어 path의 경우, 분류별 핵심과목은 같음*/
                if (data.subjectTrackList[0].category == 'job') {
                    flag = small_category;
                    for (var i = 0; i < data.subjectTrackList.length; i++) {
                        if (data.subjectTrackList[i].type == 'core') {
                            core.push('tr' + data.subjectTrackList[i].row_id + 'td' + data.subjectTrackList[i].col_id);
                        }
                    }
                    jobClick(core,support,core_c);
                }
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

    var c_text = document.querySelector('.c_text');
    var s_text = document.querySelector('.s_text');
    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.innerText = "C";
    c_text.innerText = "핵심 과목";

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

function on_off(type){
    /*type 1은 전공*/
    if (type == 1){
        if (major_flag == 0){
            for (var i = 0; i < major_list.length; i++) {
                trackClick(major_list[i].CPI, major_list[i].SC,major_list[i].CC);
                major_flag = 1;
            }
        }else{
            reset_border(type);
            major_flag = 0;
        }
    }
    else if(type == 2){
        if (math_flag == 0){
            for (var i = 0; i < mathList.length; i++) {
                mathLine('#FFF600');
                math_flag = 1;
            }
        }else{
            reset_border(type);
            math_flag = 0;
        }
    }
    /*ype 2는 수학과목*/


}
function reset_border(type){
    var ch_td;
    if (type == 1){
        for (var i = 0; i < m_list.length; i++) {
            ch_td = document.getElementById(m_list[i]);
            ch_td.style.border= "None";
        }

    }
    else if(type == 2){
        for(i=0;i<mathList.length;i++)
        {
            ch_td = document.getElementById(mathList[i]);
            ch_td.style.border= "None";
        }
    }

}
/*
function cdClick(cd_core,cd_support){

    reset_color();
    var c_text = document.querySelector('.c_text');
    var s_text = document.querySelector('.s_text');
    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = core_color;
    s_mark.style.background = support_color;
    c_mark.innerText = "R";
    s_mark.innerText = "E";
    c_text.innerText = "필수 과목";
    s_text.innerText = "선택 과목";


    var ch_td;

    if(cd_flag>0)
    {
        for(i=0;i<cd_core.length;i++)
        {
            ch_td = document.getElementById(cd_core[i]);
            ch_td.style.background = core_color;
            var cs = document.querySelector('#cs_'.concat(cd_core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(cd_core[i]));
            cs.classList.toggle('show');
            cs.style.background = core_color;
            cs_text.innerText="R";
        }

        for(i=0;i<cd_support.length;i++)
        {
            ch_td = document.getElementById(cd_support[i]);
            ch_td.style.background = support_color;
            var cs = document.querySelector('#cs_'.concat(cd_support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(cd_support[i]));
            cs.classList.toggle('show');
            cs.style.background = support_color;
            cs_text.innerText="E";
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
*/
function majorClick(cd_core,cd_support,core_color){

    reset_color();
    var c_text = document.querySelector('.c_text');
    var c_mark = document.querySelector('.c_mark');
    c_mark.style.background = core_color;
    c_mark.innerText = "R";
    c_text.innerText = "필수 과목";

    var ch_td;

    for(i=0;i<cd_core.length;i++)
    {
        ch_td = document.getElementById(cd_core[i]);
        ch_td.style.background = core_color;
        var cs = document.querySelector('#cs_'.concat(cd_core[i]));
        var cs_text = document.querySelector('.cs_txt_'.concat(cd_core[i]));
        cs.classList.toggle('show');
        cs.style.background = core_color;
        cs_text.innerText="R";
    }

    for(i=0;i<cd_support.length;i++)
    {
        ch_td = document.getElementById(cd_support[i]);
        ch_td.style.background = support_color;
        var cs = document.querySelector('#cs_'.concat(cd_support[i]));
        var cs_text = document.querySelector('.cs_txt_'.concat(cd_support[i]));
        cs.classList.toggle('show');
        cs.style.background = core_color;
        cs_text.innerText="E";
    }

}
function mathListMaker(row_id,col_id,code,name){
    mathList.push('tr'+row_id+'td'+col_id);
}
function mathLine(color){
    var ch_td;

    var math_mark = document.getElementById('tr16td4');
    math_mark.style.border = "solid 3px "+color;

    for(i=0;i<mathList.length;i++)
    {
        ch_td = document.getElementById(mathList[i]);
        ch_td.style.border= "solid 3px "+color;
    }
}


function majorLine(cd_core,cd_support,core_color){
    var ch_td;

    var micro_mark = document.getElementById('tr16td3');
    micro_mark.style.border = "solid 3px "+core_color;

    for(i=0;i<cd_core.length;i++)
    {
        ch_td = document.getElementById(cd_core[i]);
        ch_td.style.border= "solid 3px "+core_color;
    }

    for(i=0;i<cd_support.length;i++)
    {
        ch_td = document.getElementById(cd_support[i]);
        ch_td.style.border= "solid 3px "+core_color;
    }

}
function jobClick(core,support,core_color){
    reset_color();
    var c_mark = document.querySelector('.c_mark');
    c_mark.style.background = core_color;

    var ch_td;

    for(i=0;i<core.length;i++)
    {
        ch_td = document.getElementById(core[i]);
        ch_td.style.background = core_color;
        var cs = document.querySelector('#cs_'.concat(core[i]));
        var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
        cs.classList.toggle('show');
        cs.style.background = core_color;
        cs_text.innerText="C";
    }
}
/*
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

    if(cdj_flag>0)
    {
        for(i=0;i<mandatory.length;i++)
        {
            ch_td = document.getElementById(mandatory[i]);
            ch_td.style.background = "#E66E71";
        }
    }
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



function vcJobsClick(core,support){
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


function pfJobsClick(core,support){
    reset_color();

    var c_mark = document.querySelector('.c_mark');
    var s_mark = document.querySelector('.s_mark');
    c_mark.style.background = "#66CC00";
    s_mark.style.background = "#CCFF99";

    var ch_td;

    if(dej_flag>0)
    {
        for(i=0;i<core.length;i++)
        {
            ch_td = document.getElementById(core[i]);
            ch_td.style.background = "#66CC00";
            var cs = document.querySelector('#cs_'.concat(core[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(core[i]));
            cs.classList.toggle('show');
            cs.style.background = "#66CC00";
            cs_text.innerText="C";
        }

        for(i=0;i<support.length;i++)
        {
            ch_td = document.getElementById(support[i]);
            ch_td.style.background = "#CCFF99";
            var cs = document.querySelector('#cs_'.concat(support[i]));
            var cs_text = document.querySelector('.cs_txt_'.concat(support[i]));
            cs.classList.toggle('show');
            cs.style.background = "#CCFF99";
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
*/
/*
    area 클릭 이벤트
*/

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
