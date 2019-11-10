public class ArbolBinarioBusqueda<E extends Comparable> extends ArbolBinario {

    public void insertar(E elemento) {
        Nodo<E> nuevo = new Nodo(elemento);
        if (this.raiz == null) {
            this.raiz = nuevo;
        } else {
            auxiliar(this.raiz, elemento);
        }

    }

    public void auxiliar(Nodo<E> nodo, E elemento) {
        int auxiliar = nodo.getElemento().compareTo(elemento);
        if (auxiliar == 1) {
            if (nodo.getDerecho() == null) {
                nodo.setDerecho(new Nodo(elemento));
            } else {
                auxiliar(nodo.getDerecho(), elemento);
            }
        } else if (auxiliar == -1) {
            if (nodo.getIzquierdo() == null) {
                nodo.setIzquierdo(new Nodo(elemento));
            } else {
                auxiliar(nodo.getIzquierdo(), elemento);
            }
        }
    }
    
    //agregando el metodo buscar
//    public int buscar(Nodo<E> nodo, E elem){
//      if (nodo == null)
//          return 0;
//      else if(nodo.getElemento().compareTo(elem) == 0)
//          return 1;
//      else if (nodo.getElemento().compareTo(elem) == -1)
//          return buscar(nodo.derecho, elem) + 1;
//        
//      else if (nodo.getElemento().compareTo(elem) == 1)
//          return buscar(nodo.izquierdo, elem) + 1;
//      else
//        return 1;
//    }
}
