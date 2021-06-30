
const openModalButtons = document.querySelectorAll('[data-modal-target]');
const closeModalButtons = document.querySelectorAll('[data-close-button]');
const overlay = document.getElementById('overlay');

openModalButtons.forEach(button => {
    button.addEventListener('click', ()=>{
        const modal = document.querySelector(button.dataset.modalTarget);
        openModal(modal);
    })
})

overlay.addEventListener('click', ()=>{
    const modals = document.querySelectorAll('.modal.active');
    modals.forEach(modal =>{
        closeModal(modal);
    })
})

closeModalButtons.forEach(button => {
    button.addEventListener('click', ()=>{
        const modal = button.closest('.modal');
        closeModal(modal);
    })
})

function openModal(modal){
    if(modal == null) return;
    modal.classList.add('active');
    overlay.classList.add('active');
}

function closeModal(modal){
    if(modal == null) return;
    modal.classList.remove('active');
    overlay.classList.remove('active');
}

function display1(num){
    var base = document.getElementById("details");
    var food = base.getElementsByTagName("food")[num];
    var name = food.getElementsByTagName("name")[0].firstChild.data;
    var cost = food.getElementsByTagName("cost")[0].firstChild.data;
    var cost1 = food.getElementsByTagName("cost1")[0].firstChild.data;

    document.getElementById("title").innerHTML = name;
    document.getElementById("body").innerHTML = cost+"<br><br>"+cost1+"<br><br>";
}