document.addEventListener('DOMContentLoaded', function () {
    // 팝업 열기
    function openModal() {
        document.querySelector('.modal-backdrop').style.display = 'block';
    }

    // 팝업 닫기
    function closeModal() {
        document.querySelector('.modal-backdrop').style.display = 'none';
    }

    // 로그인 버튼에 팝업 열기 이벤트 연결
    document.querySelector('.loginbtn').addEventListener('click', openModal);

    // 닫기 버튼에 팝업 닫기 이벤트 연결
    document.querySelector('.close-btn').addEventListener('click', closeModal);

    // 배경 클릭 시 팝업 닫기 추가
    document.querySelector('.modal-backdrop').addEventListener('click', function(event) {
        if (event.target === this) {
            closeModal();
        }
    });
});

