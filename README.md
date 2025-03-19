# "A cada dia aprendo mais, a cada momento me desenvolvo e, em cada ação, me torno uma versão melhor de mim mesmo."
### Assinado ( Cosmo ) 

# zyro_finance 💰

## O Zyro Finance é um aplicativo de gerenciamento financeiro pessoal desenvolvido em Flutter. Ele ajuda os usuários a controlar suas finanças, monitorar gastos, definir metas financeiras e visualizar análises detalhadas de suas transações.

## Arquitetura de Pasta Pretendida
###  Clean Architecture

Clean Architecture é um conceito de design de software proposto por Robert C. Martin (também conhecido como Uncle Bob) que visa organizar o código de forma a torná-lo mais testável, flexível, manutenível e independente de frameworks, bibliotecas ou tecnologias externas. A ideia central é separar o código em camadas bem definidas, onde cada camada tem uma responsabilidade clara e depende apenas de camadas internas, seguindo o Princípio da Inversão de Dependência.

A Clean Architecture é especialmente útil para projetos grandes e complexos, como aplicativos de finanças, onde a clareza e a organização do código são essenciais.

### Estrutura

lib/
│
├── main.dart                      // Ponto de entrada do aplicativo
│
├── core/                          // Funcionalidades globais e compartilhadas
│   ├── constants/                 // Constantes do app (cores, textos, etc.)
│   ├── utils/                     // Utilitários (funções helpers, validadores, etc.)
│   ├── widgets/                   // Widgets reutilizáveis
│   ├── theme/                     // Configurações de tema (cores, fontes, etc.)
│   └── errors/                    // Tratamento de erros (exceções, falhas, etc.)
│
├── data/                          // Camada de dados
│   ├── datasources/               // Fontes de dados (local e remoto)
│   ├── models/                    // Modelos de dados (JSON, banco de dados, etc.)
│   ├── repositories/              // Implementações dos repositórios
│   └── mappers/                   // Conversores de dados (opcional)
│
├── domain/                        // Camada de domínio (lógica de negócio)
│   ├── entities/                  // Entidades de negócio
│   ├── repositories/              // Interfaces de repositórios
│   └── usecases/                  // Casos de uso (lógica de negócio)
│
├── presentation/                  // Camada de apresentação (UI)
│   ├── pages/                     // Telas do aplicativo
│   ├── widgets/                   // Widgets específicos para a UI
│   ├── bloc/                      // Gerenciamento de estado (se estiver usando BLoC)
│   ├── controllers/               // Controladores (se estiver usando MVC/MVVM)
│   └── cubit/                     // Gerenciamento de estado (se estiver usando Cubit)
│
└── injection_container.dart       // Injeção de dependências (GetIt, Provider, etc.)