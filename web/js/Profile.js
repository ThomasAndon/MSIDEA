function showorclose(a,b) {
    var c =document.getElementById(a);
    if (b===0) {
        c.style.display="none";
    }else {
        c.style.display="block";
    }
}

function showchangebar(a) {
    var pwinput = document.getElementById('veripw').value;
    var b = document.getElementById('rightorwrong');
    if (a == pwinput) {
        showorclose('showchange',1);
        b.innerText = "Verification SUCCESS! You may change info."
        b.style.color='green';
    } else {
        showorclose('showchange',0);
        b.innerText = "Verification FAILED! Wrong password."
        b.style.color='red';
    }
}

