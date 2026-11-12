Para fazer um build system de um projeto, é necessário escrever `cmake -B build`
Para fazer um build do projeto é `cmake --build build`

Obs: `build` é o nome da pasta que será utilizado pelo CMake

---

No VsCode, para configurar onde será gerado a pasta "build/", deve escrever especificar em `.vscode/settings.json`:
- `"cmake.buildDirectory": "${workspaceFolder}/<path>`