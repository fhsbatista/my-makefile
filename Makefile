# Certifique-se de que o Homebrew está instalado
HOME_BREW_BIN := $(shell which brew)

# Verifica se o Homebrew está instalado
ifeq ($(HOME_BREW_BIN),)
    $(error "O Homebrew não está instalado. Instale o Homebrew e tente novamente.")
endif

# Tarefas principais
.PHONY: all install_chrome install_vscode install_docker install_intellij configure_git configure_git_aliases

all: install_chrome install_vscode install_docker install_intellij configure_git configure_git_aliases

install_chrome:
	@echo "Instalando Google Chrome..."
	brew install --cask google-chrome
	@echo "Google Chrome instalado."

install_vscode:
	@echo "Instalando Visual Studio Code..."
	brew install --cask visual-studio-code
	@echo "Visual Studio Code instalado."

install_docker:
	@echo "Instalando Docker Desktop..."
	brew install --cask docker
	@echo "Docker Desktop instalado."

install_intellij:
	@echo "Instalando IntelliJ IDEA Community Edition..."
	brew install --cask intellij-idea-ce
	@echo "IntelliJ IDEA Community Edition instalado."

configure_git:
	@echo "Configurando Git..."
	git config --global user.name "Fernando Batista"
	git config --global user.email "fernandohsbatista@gmail.com"
	@echo "Git configurado com usuário: Fernando Batista e e-mail: fernandohsbatista@gmail.com."

configure_git_aliases:
	@echo "Configurando aliases do Git..."
	git config --global alias.st "status"
	git config --global alias.cm "commit -m"
	git config --global alias.ck "checkout"
	git config --global alias.pusho "push origin"
	git config --global alias.blog "log --oneline"
	@echo "Aliases do Git configurados: git st, git cm, git ck, git pusho, git blog"

