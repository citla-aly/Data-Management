public class ArbolAVL<E extends Comparable<E>> extends ArbolBinarioBusqueda<E> {

    @Override
    public void insertar(E elemento) {
        Nodo<E> nuevo = new Nodo<E>(elemento);
        if (this.raiz == null) {
            this.raiz = nuevo;
        } else {
            aux(raiz, elemento);
        }
    }
    public Nodo<E> aux(Nodo<E> nodo, E elemento){
        if(nodo==null){
            return (new Nodo<E>(elemento));
        }
        int auxiliar = nodo.getElemento().compareTo(elemento);
        if(auxiliar==1){
            nodo.izquierdo= aux(nodo.izquierdo, elemento);
        }
        else{
            nodo.derecho= aux(nodo.derecho, elemento);
        }
        nodo.setAltura();
        int equilibrio=0;
        if (nodo.izquierdo != null && nodo.derecho != null) {
            equilibrio= nodo.izquierdo.getAltura() - nodo.derecho.getAltura();
        } else if (nodo.izquierdo != null && nodo.derecho == null) {
            equilibrio = nodo.izquierdo.getAltura();
        } else if (nodo.derecho != null && nodo.izquierdo == null) {
            equilibrio = nodo.derecho.getAltura();
        } 
        if (equilibrio > 1 && auxiliar == 1) {
            return rotarDerecha(nodo);
        }

        if (equilibrio < -1 && auxiliar == -1) {
            return rotarIzquierda(nodo);
        }

        if (equilibrio > 1 && auxiliar==-1) {
            nodo.izquierdo = rotarIzquierda(nodo.izquierdo);
            return rotarDerecha(nodo);
        }

        if (equilibrio < -1 && auxiliar == 1) {
            nodo.derecho = rotarDerecha(nodo.derecho);
            return rotarIzquierda(nodo);
        }

        return nodo;

    }

    public Nodo<E> rotarIzquierda(Nodo<E> nodo) {
        Nodo<E> y = nodo.derecho;
        Nodo<E> x = y.izquierdo;

        y.izquierdo = nodo;
        nodo.derecho = x;
             if(nodo==raiz){
            raiz=x;
        }

        x.setAltura();
        y.setAltura();

        return y;
    }

    public Nodo<E> rotarDerecha(Nodo<E> nodo) {
        Nodo<E> x = nodo.izquierdo;
        Nodo<E> y = x.derecho;

        x.derecho = nodo;
        nodo.izquierdo = y;
        if(nodo==raiz){
            raiz=x;
        }

        nodo.setAltura();
        x.setAltura();

        return x;
    }
        public NodoAVL<E> getRaiz(){
        return (NodoAVL<E>)raiz;
    }
    
}
