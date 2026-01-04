function sayHello(){
    alert("I am JavaScript alert!")
}

function greeting(){
    uname=  prompt("Enter your Name");
    document.getElementById("greeting").textContent = "Hello "+ uname;
}