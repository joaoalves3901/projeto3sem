
async function marcar() {
    let nome = document.getElementById("nome").value;
    try {
        let result = await $.ajax({
            url: `/api/rotas`,
            method: "put",
            data: nome,
            dataType: "json",
            contentType: "application/json"
        });
        document.getElementById("resultado").innerHTML = 
            JSON.stringify(result);
    } catch(err) {
        console.log(err);
        document.getElementById("resultado").innerHTML = 
            "Erro: "+JSON.stringify(err);
    }
}