Um sistema operacional é um software que atua na comunicação entre o hardware e outras aplicações.

O kernel é o núcleo do sistema operacional, responsável por fazer o escalonamento de aplicações, o gerenciamento dos [[Driver|drivers]], dentre outras tarefas.

Há vários tipos de Kernel:

**Kernel Monolítico**
Tende a ter mais desempenho por estar tudo agrupado, porém tem muito acoplamento. Uma falha em um lugar pode (mas não em todas os casos), propagar a falha para todo o sistema.

**Microkernel**
Um kernel com apenas o essencial para o seu funcionamento completo. As aplicações do modo usuário ficam de fora e fazem chamadas ao kernel. Tende a ser mais seguro por ser mais separado, porém, pela as aplicações precisarem fazer mais chamadas ao núcleo, tendo a ser mais lento

**Kernel Híbrido**
Tenta unificar o melhor dos dois mundos do microkernel e do kernel monolítico. Um exemplo é o Windows.

**Exokernel**
Um kernel onde expõe de forma mais crua as operações sobre o hardware. Extremamente eficiente, mas muito difícil de dar manutenção

**Nanokernel**
Um kernel menor ainda que o microkernel, contendo apenas o fundamental para operações essenciais.