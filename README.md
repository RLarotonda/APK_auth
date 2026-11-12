# 🔐 App de Login com Flutter e Firebase

Aplicativo de autenticação desenvolvido com **Flutter** e **Firebase Authentication**, permitindo que usuários criem uma conta, realizem login e recuperem sua senha por e-mail.

O projeto também conta com uma interface personalizada em tema escuro e animações utilizando Lottie.

## ✨ Funcionalidades

- **Cadastro de usuários:** criação de contas utilizando e-mail e senha.
- **Login:** autenticação de usuários pelo Firebase Authentication.
- **Recuperação de senha:** envio de e-mail para redefinição de senha.
- **Gerenciamento de sessão:** identificação automática de usuários autenticados.
- **Logout:** encerramento da sessão e retorno à tela de login.
- **Animações:** utilização de arquivos Lottie na interface.
- **Identidade visual:** tema escuro e ícone personalizado para o aplicativo.

## 🛠️ Tecnologias utilizadas

- [Flutter](https://flutter.dev/) — desenvolvimento da interface multiplataforma.
- [Dart](https://dart.dev/) — linguagem de programação.
- [Firebase Core](https://firebase.google.com/docs/flutter/setup) — inicialização e integração com o Firebase.
- [Firebase Authentication](https://firebase.google.com/docs/auth) — autenticação de usuários.
- [Lottie](https://pub.dev/packages/lottie) — exibição de animações.

## 📁 Estrutura do projeto

```text
lib/
├── components/
│   ├── my_button.dart
│   ├── my_textfield.dart
│   └── social_button.dart
│
├── theme/
│   └── app_theme.dart
│
├── view/
│   ├── auth_page.dart
│   ├── home_page.dart
│   ├── login_page.dart
│   └── register_page.dart
│
├── firebase_options.dart
└── main.dart

assets/
├── animations/
│   ├── welcome.json
│   └── 67.json
│
└── icon/
    └── icon.png
```

### Organização

- `main.dart`: inicialização do Firebase e configuração principal do aplicativo.
- `auth_page.dart`: verifica o estado da autenticação e direciona o usuário para a tela adequada.
- `login_page.dart`: contém a interface e as operações de login e recuperação de senha.
- `register_page.dart`: responsável pelo cadastro de novos usuários.
- `home_page.dart`: apresenta as informações do usuário autenticado e a opção de logout.
- `components/`: componentes reutilizáveis da interface.
- `theme/`: configurações de cores e estilo do aplicativo.
- `firebase_options.dart`: configurações de conexão com o Firebase.

## 🚀 Como executar o projeto

### 1. Pré-requisitos

Antes de começar, você precisa ter instalado:

- Flutter SDK
- Dart SDK
- Android Studio ou Visual Studio Code
- Git

### 2. Clone o repositório

```bash
git clone URL_DO_REPOSITORIO
```

Entre na pasta do projeto:

```bash
cd NOME_DO_PROJETO
```

### 3. Instale as dependências

```bash
flutter pub get
```

### 4. Configure o Firebase

O projeto utiliza o Firebase Authentication para gerenciar as contas dos usuários.

1. Acesse o [Firebase Console](https://console.firebase.google.com/).
2. Crie um projeto ou utilize um projeto existente.
3. Registre o aplicativo Android com o mesmo identificador de pacote configurado no projeto.
4. Baixe o arquivo `google-services.json`.
5. Coloque o arquivo em:

```text
android/app/google-services.json
```

6. Confira se a configuração do plugin Google Services está presente nos arquivos Gradle do Android.
7. No Firebase Console, acesse **Authentication → Sign-in method**.
8. Ative o provedor **E-mail/senha**.

O arquivo `lib/firebase_options.dart` contém as opções de configuração utilizadas na inicialização do Firebase. Caso utilize outro projeto Firebase, atualize essas configurações.

### 5. Configure o ícone

Para gerar os ícones do aplicativo a partir da imagem localizada em `assets/icon/icon.png`, execute:

```bash
dart run flutter_launcher_icons
```

### 6. Execute o aplicativo

Conecte um dispositivo Android ou inicie um emulador e execute:

```bash
flutter run
```

## 📧 Personalização do e-mail de recuperação

A mensagem enviada durante a recuperação de senha é configurada diretamente no Firebase Console.

Caminho:

**Authentication → Templates → Password reset**

Nessa seção, é possível personalizar o assunto, o remetente e o conteúdo do e-mail.

## 🌐 Funcionamento da autenticação

A autenticação é realizada online por meio do Firebase Authentication.

- O cadastro exige conexão com a internet.
- O login com e-mail e senha exige conexão com a internet.
- A recuperação de senha também exige conexão.
- O aplicativo observa o estado da autenticação para identificar se existe uma sessão ativa.
- Uma sessão já autenticada pode ser restaurada pelo Firebase ao abrir o aplicativo novamente.

**Importante:** a possibilidade de restaurar uma sessão existente não significa que novos logins possam ser realizados offline.

## 📌 Próximas melhorias

- Implementar funcionalidades de perfil do usuário.
- Desenvolver a área de configurações.
- Integrar funcionalidades de autenticação social.
- Implementar armazenamento de dados utilizando Cloud Firestore.
- Adicionar persistência e sincronização offline dos dados do aplicativo.

## 👨‍💻 Desenvolvimento

Projeto desenvolvido utilizando Flutter e Firebase, com foco na implementação de autenticação de usuários, organização de componentes e construção de uma interface reutilizável.

---

**Tecnologias:** Flutter · Dart · Firebase Authentication · Lottie
