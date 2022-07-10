(*
 *  execute "coolc bad.cl" to see the error messages that the coolc parser
 *  generates
 *
 *  execute "myparser bad.cl" to see the error messages that your parser
 *  generates
 *)

class A {
};

aCerto : A;

(* B tenta herdar uma classe que não existe *)
class B inherits A {

};

(* Herda A *)
Class C inherits A {
    C1 : Int;
    C2 : A;
}

(* Cria uma classe com uma funcao que retorna um inteiro *)
Class D inherits A {
    d1 : Int;
    d2 : A;

    funcG1() : Int {
        10;
    };
}


(* Cria uma classe corretamente e uma funcao para gerar a mesma *)
class E inherits A {
        fc1 : Int;
        fc2 : Int;

        init(x : Int, y : Int) : E {
        {
                fc1 <- x;
                fc2 <- y;
                self;
        }
}

(* Inicia uma variavel com um tipo *)
fcorreto : E <- (new E).init(1,2);