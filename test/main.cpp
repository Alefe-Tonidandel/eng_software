#include <iostream>
#include "../src/bib.hpp"
int main() {
    if (calcularFatorial(5) == 120) std::cout << "[OK] Teste Fatorial Passou!" << std::endl;
    else std::cout << "[FALHA] Teste Fatorial Falhou!" << std::endl;
    return 0;
}
