# 📱 Clone Nubank UI (Flutter)

Este projeto é uma **cópia da interface do aplicativo Nubank**, desenvolvido em **Flutter** para fins **didáticos e de prática**.  
O objetivo principal é reproduzir a interface do aplicativo, seguindo o layout já estabelecido pela plataforma, aplicando **boas práticas de organização de código e componentes reutilizáveis**.

---

## 🚀 Tecnologias utilizadas

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)

---

## 📂 Estrutura do projeto

O projeto segue uma organização baseada em boas práticas, separando **componentes, páginas, rotas e temas**.

```

└── 📁lib
└── 📁components
├── build\_action\_icon.dart          # Ícones de ações rápidas
├── card\_widget.dart                # Widget de cartões
├── footerbar.dart                  # Barra inferior
├── money\_visibility\_toggle.dart    # Alternar visibilidade do saldo
├── user\_transaction\_history.dart   # Histórico de transações
└── 📁pages
└── 📁account
├── account\_page.dart           # Página da conta
└── 📁home
├── home\_page.dart              # Página inicial
└── 📁investment
├── investment\_page.dart        # Página de investimentos
└── 📁promo
├── promo\_page.dart             # Página de promoções
└── 📁routes
├── app\_routes.dart                 # Definições de rotas
└── 📁theme
├── app\_theme.dart                  # Tema global da aplicação
└── main.dart                           # Ponto de entrada da aplicação

```

---

## ▶️ Como rodar o projeto

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/nubank-clone-flutter.git
   cd nubank-clone-flutter
   ```

````

2. **Instale as dependências:**

   ```bash
   flutter pub get
   ```

3. **Execute o projeto:**

   ```bash
   flutter run
   ```

> ⚠️ Certifique-se de ter o [Flutter instalado](https://docs.flutter.dev/get-started/install) e configurado em sua máquina.

---

## 🛠️ Futuras melhorias

* Adicionar navegação entre páginas.
* Implementar animações mais próximas ao app real.
* Criar integração com API (mesmo que mockada).
* Evoluir a aplicação para além do front-end (ex.: consumo de dados reais).

---

## 📌 Objetivo

Este projeto **não tem fins comerciais**, sendo apenas para **aprendizado e prática** de **Flutter/Dart**.



````
