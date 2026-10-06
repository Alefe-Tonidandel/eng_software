#include <iostream>
#include "../src/bib.hpp"
int main() {
    if (calcularFatorial(5) == 120) std::cout << "[OK] Teste Fatorial Passou!" << std::endl;
    if (verificarPar(4) == true) std::cout << "[OK] Teste Par Passou!" << std::endl;
    return 0;
}
