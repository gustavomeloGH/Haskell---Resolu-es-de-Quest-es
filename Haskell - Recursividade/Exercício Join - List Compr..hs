--                              NOVA ROMA 
-- EXERCICIO - HASKELL LIST COMPREHENSION
-- Obs: Alguns sinonimos optei em colocar como "STRING", para facilitar a visualizacao nos L e R joins.

-- SINONIMOS

type Nro_cli = String
type Nome_cli = String
type End_cli = String
type Saldo = String
type Nome_vend = String
type Cod_vend = Int

type Cliente = (Nro_cli, Nome_cli, End_cli, Saldo, Cod_vend)
type Clientes = [Cliente]
type Vendedor = (Cod_vend, Nome_vend)
type Vendedores = [Vendedor]

-- CABECALHOS DOS DADOS

-- clientes
cliente1 :: Cliente 
cliente2 :: Cliente
cliente3 :: Cliente
cliente4 :: Cliente

-- vendedores
vendedor1 :: Vendedor
vendedor2 :: Vendedor
clientes :: [Cliente]
vendedores :: [Vendedor]

-- ATRIBUICAO DOS DADOS

-- clientes
cliente1 = ("1", "Marcia","Rua X", "100", 1)
cliente2 = ("2", "Cristina", "Avenida 1", "10", 1)
cliente3 = ("3", "Manoel", "Avenida3", "234", 1)
cliente4 = ("4", "Rodrigo", "Rua X", "137", 2)
-- Exemplo para simular LeftJoin
cliente5 = ("5", "LeftJoin", "Rua O", "121", 4)

-- vendedores
vendedor1 = (1, "Adriana")
vendedor2 = (2, "Roberto")
-- Exemplo para simular RightJoin
vendedor3 = (3, "RightJoin")

-- DEFINICAO DAS FUNCOES

-- clientes
clientes = [cliente1, cliente2, cliente3, cliente4, cliente5]

-- vendedores
vendedores = [vendedor1, vendedor2, vendedor3]

-- DEFINICAO DE FUNCAO RETORNO (Uso nos Joins)
type JoinClienteVendedor = [(Nro_cli, Nome_cli, End_cli, Saldo, Cod_vend, Nome_vend)]

-- FUNCOES JOINS -> JOIN, LEFTJOIN, RIGHTJOIN


-- JOIN PADRAO

join :: Clientes -> Vendedores -> JoinClienteVendedor
join c v = [(nr, nomC, end, sal, codC, nomV) | 
                 (nr, nomC, end, sal, codC) <- c, 
                 (codV, nomV) <-v, codC == codV]


-- LEFT JOIN

leftJoin :: Clientes -> Vendedores -> JoinClienteVendedor
leftJoin c v = (join c v) ++ (justLJoin v c)   


-- auxiliar left join
justLJoin :: Vendedores -> Clientes ->  JoinClienteVendedor
justLJoin v c = (uniao lJoin)
                where lJoin =  [(nr, nomC, end, sal, codC, "NULL") |  (nr, nomC, end, sal, codC) <- c, 
                               (codV, nomV) <-v, length(filter (\(a,_) -> a == codC) v) == 0]


uniao :: JoinClienteVendedor -> JoinClienteVendedor
uniao [] = []
uniao (a:x)  = if a `elem` x then uniao x else a : uniao x

-- RIGHT JOIN

rightJoin :: Clientes -> Vendedores -> JoinClienteVendedor
rightJoin c v = (join c v) ++ (justRJoin c v)

-- auxiliar right join
justRJoin :: Clientes -> Vendedores -> JoinClienteVendedor
justRJoin c v = (uniao rJoin)
                where rJoin =  [("NULL", "NULL", "NULL", "NULL", codV, nomV) |  (nr, nomC, end, sal, codC) <- c, 
                               (codV, nomV) <-v, length(filter (\(_,_,_,_,a) -> a == codV) c) == 0]


-- IMPRIMIR OS JOINS -> JOIN, LEFTJOIN, RIGHTJOIN (maneira agradavel aos olhos)
printJoin = foldr1 (>>) (map print (join clientes vendedores))
printLJoin = foldr1 (>>) (map print (leftJoin clientes vendedores))
printRJoin = foldr1 (>>) (map print (rightJoin clientes vendedores))

-- Gustavo Melo da Silva 5 Periodo Comp - "Nunca vou saber de tudo, mas tenho capacidade de me esforcar pra saber o que preciso!"