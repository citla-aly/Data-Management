ArbolAVL arbol= new ArbolAVL();
        ArbolBinarioBusqueda ar= new ArbolBinarioBusqueda();
        void setup(){
        for(int i=0; i<=5; i++){
            ar.insertar(10-i);
        }
        for(int i=0; i<=100; i++){
            arbol.insertar(100-i);
        }

        System.out.println(arbol.toString());
        System.out.println(ar.toString());
        System.out.println(arbol.raiz.derecho.getElemento());
        
//        System.out.println(ar.buscar(ar.raiz, 5));
    }
    
