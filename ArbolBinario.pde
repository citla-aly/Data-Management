public class ArbolBinario<E> {

    public Nodo<E> raiz; //Cambie la privacidad

    public ArbolBinario() {

    }

    public ArbolBinario(Nodo<E> raiz) {
        this.raiz = raiz;
    }

    public void visitar(Nodo<E> raiz) {
        System.out.println(raiz.getElemento() + ",");
    }

    public void recorrerPreorden() {
        preorden(this.raiz);
    }

    public void preorden(Nodo<E> nodo) {
        if (nodo != null) {
            visitar(nodo);
            preorden(nodo.getIzquierdo());
            preorden(nodo.getDerecho());
        }
    }

    public void recorrerPostorden() {
        postorden(this.raiz);
    }

    public void postorden(Nodo<E> nodo) {
        if (nodo != null) {
            postorden(nodo.getIzquierdo());
            postorden(nodo.getDerecho());
            visitar(nodo);
        }
    }

    public void recorrerInorden() {
        inorden(this.raiz);
    }

    public void inorden(Nodo<E> nodo) {
        if (nodo != null) {
            inorden(nodo.getIzquierdo());
            visitar(nodo);
            inorden(nodo.getDerecho());
        }
    }

    @Override
    public String toString() {
        return crearRepresentacion(raiz, "", "", false);
    }

    private String crearRepresentacion(Nodo<E> nodo, String representacion,
            String nivel, boolean esIzquierdo) {
        representacion += nivel;

        if (!nivel.equals("")) {
            representacion += "\b\b" + (esIzquierdo ? "\u251C" : "\u2514") + "\u2500";
        }

        if (nodo == null) {
            return representacion += "\n";
        }

        representacion += nodo + "\n";

        // Hijo izquierdo
        representacion = crearRepresentacion(nodo.getIzquierdo(), representacion, nivel + "\u2502 ", true);
        // Hijo derecho
        representacion = crearRepresentacion(nodo.getDerecho(), representacion, nivel + "  ", false);

        return representacion; //pruba

    }

    public E getRaiz() {
        return this.raiz.getElemento();
    }
}
