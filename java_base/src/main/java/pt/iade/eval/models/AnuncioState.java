package pt.iade.eval.models;

public enum AnuncioState {
    DONE(true), 
    WAITING(false);

    private boolean estado;
    private AnuncioState(boolean estado) {
        this.estado = estado;
    }
    public boolean isEntregue(){
        return estado;
    }
}



