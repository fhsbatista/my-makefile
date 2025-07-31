HOME_BREW_BIN := $(shell which brew)

ifeq ($(HOME_BREW_BIN),)
    $(error "O Homebrew não está instalado. Instale o Homebrew e tente novamente.")
endif

.PHONY: all 
		install_postman
		install_chrome 
		install_vscode 
		install_docker 
		install_intellij 
		install_iterm 
		install_zsh 
		install_fork 
		install_martians_mono_font 
		set_font_martians_on_vscode 
		configure_git 
		configure_git_aliases

all: install_postman 
	 install_chrome 
	 install_vscode 
	 install_docker 
	 install_intellij 
	 install_iterm 
	 install_zsh 
	 install_fork 
	 install_martians_mono_font 
	 set_font_martians_on_vscode 
	 configure_git 
	 configure_git_aliases

install_postman:
	@echo "Instalando postman"
	brew install postman
	@echo "Postman instalado"

install_go:
	@echo "Instalando go"
	brew install go
	@echo "Go instalado"

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

install_iterm:
	@echo "Instalando iTerm2..."
	brew install --cask iterm2
	@echo "iTerm2 instalado."

install_zsh:
	@echo "Instalando zsh..."
	brew install zsh
	@echo "zsh instalado."

install_martians_mono_font:
	@echo "Instalando font evil martians"
	curl -L -o martian-mono.zip https://github.com/evilmartians/mono/archive/refs/tags/v1.0.0.zip
	unzip martian-mono.zip
	mv mono-1.0.0/fonts/ttf/*.ttf ~/Library/Fonts/
	rm -rf mono-1.0.0
	rm martian-mono.zip
	@echo "Evil martians font instalada"

set_font_martians_on_vscode:
	@echo "Setting font martians mono on vscode"
	@echo '{"editor.fontFamily": "\"Martian Mono\", Consolas, \"Courier New\", monospace"}' >> ~/Library/Application\ Support/Code/User/settings.json
	@echo "Fonte configurada"

install_fork:
	@echo "Instalando Fork..."
	brew install --cask fork
	@echo "Fork instalado."

configure_git:
	@echo "Configurando Git..."
	git config --global user.name "Fernando Batista"
	git config --global user.email "fernandohsbatista@gmail.com"
	@echo "Git configurado com usuário: Fernando Batista e e-mail: fernandohsbatista@gmail.com."
	git config push.default current

configure_git_aliases:
	@echo "Configurando aliases do Git..."
	git config --global alias.st "status"
	git config --global alias.cm "commit -m"
	git config --global alias.ck "checkout"
	git config --global alias.pusho "push origin"
	git config --global alias.blog "log --oneline"
	@echo "Aliases do Git configurados: git st, git cm, git ck, git pusho, git blog"

