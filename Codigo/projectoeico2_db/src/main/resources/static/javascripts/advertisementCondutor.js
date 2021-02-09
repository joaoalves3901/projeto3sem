window.onload = async function() {
    let id = sessionStorage.getItem("id");

    let anuncio = await $.ajax({
        url: "/api/anuncios/"+ id,
        method: "get",
        dataType: "json"
    });
    console.log(anuncio);

    document.getElementById("cliente").innerHTML = anuncio.cliente.nome;
    document.getElementById("origem").innerHTML = anuncio.origem;
    document.getElementById("destino").innerHTML = anuncio.destino;
    document.getElementById("volume").innerHTML = anuncio.volume;
    document.getElementById("descricao").innerHTML = anuncio.descricao;
}


async function acceptAdvertisement() {
    try {
        let anuncioaceite = {
            anuncio:  {anuncioid: sessionStorage.getItem("id")},
            condutor: {condutor: sessionStorage.getItem("condutorId")},
            estado: "Confirmada",
        }
        console.log(JSON.stringify(anuncioaceite));
        let result = await $.ajax({
            url: "/api/anunciosaceites",
            method: "post",
            dataType: "json",
            data:JSON.stringify(anuncioaceite),
            contentType: "application/json"
        });
        console.log(JSON.stringify(result));
        // Change to album page
        sessionStorage.setItem("id",result.id);
        window.location = "indexCondutor.html";
    } catch(err) {
        console.log(err);
        // mensagem para o utilizador
    }
}