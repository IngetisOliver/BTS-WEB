function addition(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var d = document.getElementById("t5").value;
    var c = Number(a)+Number(b)+Number(d);

    t3.value = c;

    /* t3.value = Number(t1.value) + Number(t2.value); */
}

function soustraction(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var d = document.getElementById("t5").value;
    var c = Number(a)-Number(b)-Number(d);

    t3.value = c;

    /* t3.value = Number(t1.value)-(t2.value); */
}

function multiplication(){
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var d = document.getElementById("t5").value;
    var c = Number(a)*Number(b)*Number(d);

    t3.value = c;

    /* t3.value = Number(t1.value)*Number(t2.value); */

}

function division(){

    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var d = document.getElementById("t5").value;
    
    var c = Number(a)/Number(b)/Number(d);

    t3.value = c;

    /* t3.value = Number(t1.value) / Number(t2.value); */
}

function parite(){

    if(Number(t3.value)%2== 0)
        t4.value = "Pair";
    else
        t4.value = "Impair";
    

}

function permute(){
    var sw = t1.value;
    t1.value = t2.value;
    t2.value = sw;

    /*[t1.value;t2.value]=[t2.value;t1.value]; */ 


}

