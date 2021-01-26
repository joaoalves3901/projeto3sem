window.onload = function () {
    loadAdvertisements();
}

async function loadAdvertisements() {
    try {
        let anuncios = await $.ajax({
            url: "/api/anuncios",
            method: "get",
            dataType: "json"
        });
        showAds(anuncios);

    } catch (err) {
        let elemMain = document.getElementById("main");
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>";
    }
}

function showAds(anuncios) {
    let elemMain = document.getElementById("main");
    let html = "";
    for (let anuncio of anuncios) {
        html += "<section onclick='showAd(" + anuncio.id + ")'>" +
            "<h3>" + anuncio.descricao + "</h3>" +
            "<p> Anunciante: " + anuncio.cliente.nome + "</p></section>";
    }
    elemMain.innerHTML = html;
}


function showAd(id) {
    sessionStorage.setItem("id", id);
    window.location = "advertisement.html";
}


async function filterDestino() {
    try {
        let destino = document.getElementById("destino").value;
        alert(destino);
        let anuncios = await $.ajax({
            url: "/api/anuncios/" + destino,
            method: "get",
            dataType: "json"
        });
        showAds(anuncios);
    } catch (err) {
        let elemMain = document.getElementById("main");
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>";
    }
}