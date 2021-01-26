async function insertAdvertisement() {
    try {
        let ad = {
            origem: document.getElementById("origem").value,
            destino: document.getElementById("destino").value,
            volume: document.getElementById("volume").value,
            descricao: document.getElementById("descricao").value,
        }
        alert(JSON.stringify(ad));
        let result = await $.ajax({
            url: "/api/anuncios",
            method: "post",
            dataType: "json",
            data: JSON.stringify(ad),
            contentType: "application/json"
        });
        alert(JSON.stringify(result));
    } catch (err) {
        console.log(err);
        elemMain.innerHTML = "<h1> Página não está disponível</h1>";
    }
}