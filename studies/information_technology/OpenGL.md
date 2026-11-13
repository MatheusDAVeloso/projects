## O que é o OpenGL
OpenGL é comumente conhecido como uma API (Application Program Interface), porém na verdade ela é um conjunto de especificações de input e output desenvolvida pelos próprios fabricantes de placas gráficas. Ou seja, se houver um output diferente do esperado e o código está ok, é um bug relacionado a implementação do OpenGL, e quando acontecer isso, o que basta fazer é esperar uma atualização de [[Driver|driver]].

O OpenGL pode ser visto como uma grande máquina de estado que pode ser configurado. O estado atual fica em seu `context`.

---
## Metodologias de desenvolvimento com OpenGL
O OpenGL possui duas formas de ser desenvolvido, o profile-mode e o intermediate-mode. O intermediate-mode abstrai muito o cálculo realizado pelo OpenGL, facilitando o uso, porém possuindo muitas deprecações e sendo pouco flexível. Por isso, é recomendado pela OpenGL a utilizar o profile-mode, mesmo que seja mais difícil de aprender e manter, dá mais flexibilidade e não possui funções com depreciação.

---
## Gerenciamento de objetos
 Para gerenciar objetos, é necessário fazer um **bind** do objeto ao OpenGL e depois ir repassando suas configurações