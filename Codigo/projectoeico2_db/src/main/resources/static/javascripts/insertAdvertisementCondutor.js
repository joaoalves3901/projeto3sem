async function addAnuncio() {
    try {
        let anuncio = {
            cliente: {clienteid: sessionStorage.getItem("condutorId")},
            origem: document.getElementById("origem").value,
            destino: document.getElementById("destinopost").value,
            volume: document.getElementById("volume").value,
            descricao: document.getElementById("descricao").value,
        }
        console.log(JSON.stringify(anuncio));
        let result = await $.ajax({
            url: "/api/anuncios",
            method: "post",
            dataType: "json",
            data:JSON.stringify(anuncio),
            contentType: "application/json"
        });
        console.log(JSON.stringify(result));
        // Change to album page
        sessionStorage.setItem("id",result.id);
        window.location = "advertisementCondutor.html";
    } catch(err) {
        console.log(err);
        // mensagem para o utilizador
    }
}