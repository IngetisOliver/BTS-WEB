function calcul_moyenne() {
    var n1= prompt ("Donner la première note :");
    var n2= prompt ("Donner la deuxième note :");
    var n3= prompt ("Donner la troisèime note :");

    var somme = Number(n1)+Number(n2)+Number(n3);

    document.write ("Voici la somme :"+somme+"<br>");
    var moyenne= somme/3;

    document.write("Voici la moyenne :"+moyenne+"<br>");

    if (moyenne<10)
        document.write("T'es un fucking redoublant");
    else
        document.write('Accepted  😃 😃 😃 😃');
}

function test_age() {
    var a1= prompt ("Donner moi votre âge :");
    
    if (Number(a1)>=18){
        if (Number(a1)<100){
            document.write ("<font size='8em' color=blue >" + "Je suis Majeur"+"</font>");
        document.bgColor="green";
        }else
        document.write("T'es immortel mec revient à la réalité");

    }
    else{
    document.write ("<font size='8em' color=pink >" + "Je suis Mineur"+"</font>");
    document.bgColor='red';
    }
}


function simple_affichage(){

    var p1= prompt ("Quel est ton Prénom ? :");
    var no1= prompt ("Quel est ton Nom ? :");
    document.write('<div style="margin:auto; width:50%; border:6px solid red; ">');
    document.write("Salut "+ p1 +" "+ no1 +" et Bienvenue dans ce monde 🥶😈🎃 ");
    document.write('</div>')

}

/*function test_couleur(){

    var red = Math.floor(Math.random() * 256);
    var green = Math.floor(Math.random() * 256);
    var blue = Math.floor(Math.random() * 256);

    var randomColor = "rgb(" + red + ", " + green + ", " + blue + ")";

    document.body.style.backgroundColor = randomColor;

    setInterval(test_couleur, 4000);
}*/

function test_couleur(){
    let c = prompt ("Donner une couleur :");
    if(c == "rouge" || c == "ROUGE"){
        document.body.style.background = 'red';
    }
    else if (c == "bleu" || c == "BLEU"){
        document.body.style.background = "blue";
    }
    else if (c == "rose" || c == "ROSE"){
        document.body.style.background = "pink";
    }
    else if (c == "vert" || c == "VERT"){
        document.body.style.background = "green";
    }
    
    else{
        document.write("Couleur non compris");
    }
}

