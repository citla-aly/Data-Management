public class NodoAVL<E> extends Nodo<E> {

    private int factorEquilibrio;
    protected NodoAVL<E> derecho;
    protected NodoAVL<E> izquierdo;

    public NodoAVL(E elemento, NodoAVL<E> izquierdo, NodoAVL<E> derecho) {
        super(elemento, izquierdo, derecho);
        factorEquilibrio = izquierdo.getAltura() - derecho.getAltura();
    }

    public NodoAVL(E elemento) {
        super(elemento);
    }

    public int getFactorEquilibrio() {
        return factorEquilibrio;
    }

    public void setFactorEquilibrio(int factorEquilibrio) {
        this.factorEquilibrio = factorEquilibrio;
    }

    public void actualizarFactorEquilibrio() {
        if (this.izquierdo != null && this.derecho != null) {
            factorEquilibrio = this.izquierdo.getAltura() - this.izquierdo.getAltura();
        } else if (this.izquierdo != null && this.derecho == null) {
            factorEquilibrio = this.izquierdo.getAltura();
        } else if (this.derecho != null && this.izquierdo == null) {
            factorEquilibrio = this.derecho.getAltura();
        } else {
            factorEquilibrio = 0;
        }
    }


}
