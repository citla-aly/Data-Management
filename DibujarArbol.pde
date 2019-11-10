Nodo nodo;
void dibujarNodo(Nodo nodo){
  Coordenada nueva = nodo.getCoordenada();
  ellipse(nueva.getX(),nueva.getY(), 55, 55);
  noStroke();
  fill(definirColor());
  
}
void conectarNodos(Nodo nodo){
}
int definirColor(){
  return 0;
}
