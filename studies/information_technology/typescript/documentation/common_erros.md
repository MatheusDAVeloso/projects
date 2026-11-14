Por algum motivo o HTML as vezes dá erro como:

>[!fail] Exemplo 1
>Uncaught ReferenceError: exports is not defined at index.js:2:23

Uma forma "gambiarra" de se resolver é colocando esta linha antes de qualquer referência ao JavaScript:
- `<script>var exports = {};</script>`