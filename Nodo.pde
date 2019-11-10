Coordenada coordenada;
class Nodo<E>{
  private Coordenada coordenada;
  private E elemento;
  protected Nodo<E> izquierdo;
  protected Nodo<E> derecho;
  private int altura;

    public Nodo(E elemento, Nodo<E> izquierdo, Nodo<E> derecho) {
        this.elemento = elemento;
        this.izquierdo = izquierdo;
        this.derecho = derecho;
        altura = Math.max(izquierdo.altura, derecho.altura) + 1;
    }

    public Nodo(E elemento) {
        this.elemento = elemento;
        altura = 1; //Asumimos que este no va a tener elementos
    }

    public E getElemento() {
        return elemento;
    }

    public void setElemento(E elemento) {
        this.elemento = elemento;
    }

    public Nodo<E> getIzquierdo() {
        return izquierdo;
    }

    public void setIzquierdo(Nodo<E> izquierdo) {
        this.izquierdo = izquierdo;
    }

    public Nodo<E> getDerecho() {
        return derecho;
    }

    public void setDerecho(Nodo<E> derecho) {
        this.derecho = derecho;
    }
    public Coordenada getCoordenada() {
        return coordenada;
    }

    public void setCoordenada(Coordenada coordenana) {
        this.coordenada = coordenada;
    }

    public int getAltura() {
        return altura;
    }

    public void setAltura() {
        if (izquierdo != null && derecho != null) {
            altura = Math.max(izquierdo.altura, derecho.altura) + 1;
        } else if (izquierdo != null && derecho == null) {
            altura = izquierdo.altura + 1;
        } else if (derecho != null && izquierdo == null) {
            altura = derecho.altura + 1;
        } else {
            altura = 1;
        }
    }
    public String toString(){
        return ""+this.getElemento();
    }
  
}
