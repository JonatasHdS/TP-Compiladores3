(*
 *  execute "coolc bad.cl" to see the error messages that the coolc parser
 *  generates
 *
 *  execute "myparser bad.cl" to see the error messages that your parser
 *  generates
 *)

(* no error *)
class A {
};

(* B tenta herdar uma classe que não existe *)
class B inherits Z {

};

(* C tenta herdar algo que nao e um tipo *)
Class C inherits intA {
};

(* Erro de digitacao *)
Class D inherit A {
};

(* Faltou abrir as chaves*)
Class E inherits A 
};


(* Atributo da classe tenta ser de um tipo inexistente *)
Class F inherits A {
    f1 : Int;
    f2 : A2;
}

(* Fala que funcao retorna inteiro, mas funcao nao retorna nada *)
Class G inherits A {
    g1 : Int;
    g2 : A;

    funcG1() : int {};
}

(* Par de chaves extra *)
Class H inherits A {
    h1 : Int;
    h2 : A;

    funcH1() : int {{25}};
}

(* Esqueceu de fechar parentesis *)
Class I inherits A {
    i1 : Int;
    i2 : A;

    funcI1( : int {25};
}

(* Cria uma classe corretamente e uma funcao para gerar a mesma *)
class FuncaoCerta inherits A {
        fc1 : Int;
        fc2 : A;

        init(x : Int, y : A) : FuncaoCerta {
        {
                fc1 <- x;
                fc2 <- y;
                self;
        }
}

(* Chamada de metodo que precisa de 2 atributos com somente 1 *)
fcorreto : FuncaoCerta <- (new FuncaoCerta).init(1);

(* Chamada de atributo nao existente no escopo da classe)
class J inherits A {
        d1 : Int;
        d2 : J;
        fd3(x:Int) : Int {
                y+a;
        };
};

