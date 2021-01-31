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