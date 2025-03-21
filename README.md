# "A cada dia aprendo mais, a cada momento me desenvolvo e, em cada ação, me torno uma versão melhor de mim mesmo."  
### Assinado (Cosmo)  

# zyro_finance 💰  

![GitHub](https://img.shields.io/github/license/c-o-s-m-o/zyro_finance?style=for-the-badge)  
![GitHub last commit](https://img.shields.io/github/last-commit/c-o-s-m-o/zyro_finance?style=for-the-badge)  
![GitHub stars](https://img.shields.io/github/stars/c-o-s-m-o/zyro_finance?style=for-the-badge)  

## 📖 Sobre o Projeto  

O **Zyro Finance** é um aplicativo de gerenciamento financeiro pessoal desenvolvido em Flutter. Ele ajuda os usuários a controlar suas finanças, monitorar gastos, definir metas financeiras e visualizar análises detalhadas de suas transações.  

---

## 🏗️ Arquitetura de Pasta Pretendida  
### Clean Architecture  

A **Clean Architecture** é um conceito de design de software proposto por Robert C. Martin (também conhecido como Uncle Bob) que visa organizar o código de forma a torná-lo mais testável, flexível, manutenível e independente de frameworks, bibliotecas ou tecnologias externas. A ideia central é separar o código em camadas bem definidas, onde cada camada tem uma responsabilidade clara e depende apenas de camadas internas, seguindo o Princípio da Inversão de Dependência.  

A Clean Architecture é especialmente útil para projetos grandes e complexos, como aplicativos de finanças, onde a clareza e a organização do código são essenciais.  

---

## 🗂️ Estrutura do Projeto

```bash
📁 lib/
│
├── 📄 main.dart # Ponto de entrada do aplicativo
│
├── 📁 core/ # Funcionalidades globais compartilhadas
│ ├── 📁 constants/ # Constantes do app (cores, textos, etc.)
│ ├── 📁 utils/ # Utilitários (funções helpers, validadores, etc.)
│ ├── 📁 widgets/ # Widgets reutilizáveis
│ ├── 📁 theme/ # Configurações de tema (cores, fontes, etc.)
│ └── 📁 errors/ # Tratamento de erros (exceções, falhas, etc.)
│
├── 📁 data/ # Camada de dados
│ ├── 📁 datasources/ # Fontes de dados (local e remoto)
│ ├── 📁 models/ # Modelos de dados (JSON, banco de dados, etc.)
│ ├── 📁 repositories/ # Implementações dos repositórios
│ └── 📁 mappers/ # Conversores de dados (opcional)
│
├── 📁 domain/ # Camada de domínio (lógica de negócio)
│ ├── 📁 entities/ # Entidades de negócio
│ ├── 📁 repositories/ # Interfaces de repositórios
│ └── 📁 usecases/ # Casos de uso (lógica de negócio)
│
├── 📁 presentation/ # Camada de apresentação (UI)
│ ├── 📁 pages/ # Telas do aplicativo
│ ├── 📁 widgets/ # Widgets específicos para a UI
│ ├── 📁 bloc/ # Gerenciamento de estado (se estiver usando BLoC)
│ ├── 📁 controllers/ # Controladores (se estiver usando MVC/MVVM)
│ └── 📁 cubit/ # Gerenciamento de estado (se estiver usando Cubit)
│
└── 📄 injection_container.dart # Injeção de dependências (GetIt, Provider, etc.)

---

# 📌 **Regra de Nomenclatura para Arquivos e Pastas**

Para manter o código organizado e consistente, siga as seguintes regras de nomenclatura:

### 1. **Pastas**
- Use **letras minúsculas** e **underscores** (`_`) para separar palavras.
- Exemplos: `core/`, `data/`, `presentation/courses/`.

### 2. **Arquivos**
- Use **PascalCase** para nomes de arquivos.
- Exemplos: `CourseCard.dart`, `CustomButton.dart`, `LoadingIndicator.dart`.

### 3. **Classes**
- Use **PascalCase** para nomes de classes.
- Exemplos: `CourseCard`, `CustomButton`, `LoadingIndicator`.

### 4. **Funções e Métodos**
- Use **camelCase** para nomes de funções e métodos.
- Exemplos: `fetchData()`, `validateInput()`, `buildWidget()`.

### 5. **Variáveis e Parâmetros**
- Use **camelCase** para nomes de variáveis e parâmetros.
- Exemplos: `courseTitle`, `userName`, `isLoading`.

### 6. **Constantes**
- Use **UPPER_SNAKE_CASE** para constantes.
- Exemplos: `APP_NAME`, `MAX_ITEMS`, `DEFAULT_TIMEOUT`.

---

## 🛠️ **Organização do Código**

### 1. **Componentes Reutilizáveis**
- Todos os widgets reutilizáveis devem ser colocados em `core/widgets/`.
- Organize os widgets em subpastas por categoria:
  - `cards/`: Widgets do tipo Card.
  - `buttons/`: Widgets do tipo Botão.
  - `inputs/`: Widgets de entrada de dados.
  - `indicators/`: Widgets de indicadores (loading, progresso, etc.).
  - `layouts/`: Widgets de layout (headers, divisores, etc.).
  - `lists/`: Widgets de listas.
  - `misc/`: Widgets diversos que não se encaixam em outras categorias.

### 2. **Telas e Widgets Específicos**
- Telas e widgets específicos de uma feature devem ficar na pasta `presentation/<feature>/`.
- Exemplo:
  - Telas de cursos: `presentation/courses/pages/`.
  - Widgets específicos de cursos: `presentation/courses/widgets/`.

### 3. **Camada de Dados**
- A camada de dados (`data/`) contém:
  - **`datasources/`**: Fontes de dados (local e remoto).
  - **`models/`**: Modelos de dados (JSON, banco de dados, etc.).
  - **`repositories/`**: Implementações dos repositórios.
  - **`mappers/`**: Conversores de dados (opcional).

### 4. **Camada de Domínio**
- A camada de domínio (`domain/`) contém:
  - **`entities/`**: Entidades de negócio.
  - **`repositories/`**: Interfaces de repositórios.
  - **`usecases/`**: Casos de uso (lógica de negócio).

### 5. **Camada de Apresentação**
- A camada de apresentação (`presentation/`) contém:
  - **`pages/`**: Telas do aplicativo.
  - **`widgets/`**: Widgets específicos para a UI.
  - **`bloc/`**: Gerenciamento de estado (se estiver usando BLoC).
  - **`controllers/`**: Controladores (se estiver usando MVC/MVVM).
  - **`cubit/`**: Gerenciamento de estado (se estiver usando Cubit).

---

Para manter a organização e a padronização do código do Zyro Finance, esta regra de nomenclatura deve ser seguida para todos os arquivos e pastas do projeto.
---

### 🎯 **Resumo das Regras de Nomenclatura**

| **Tipo**                | **Padrão**           | **Exemplo**                     |
|-------------------------|----------------------|---------------------------------|
| Pastas                  | `snake_case`         | `core/`, `presentation/courses/`|
| Arquivos                | `PascalCase`         | `CourseCard.dart`               |
| Classes                 | `PascalCase`         | `CourseCard`                    |
| Funções e Métodos       | `camelCase`          | `fetchData()`, `buildWidget()`  |
| Variáveis e Parâmetros  | `camelCase`          | `courseTitle`, `isLoading`      |
| Constantes              | `UPPER_SNAKE_CASE`   | `APP_NAME`, `MAX_ITEMS`         |

---