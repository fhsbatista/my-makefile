.PHONY: all \
	update_apt \
	install_postman \
	install_go \
	install_vscode \
	install_intellij \
	install_zsh \
	install_martians_mono_font \
	set_font_martians_on_vscode \
	install-git \
	configure_git \
	configure_git_aliases \
	install_ohmyzsh

all: update_apt \
	 install_postman \
	 install_go \
	 install_vscode \
	 install_intellij \
	 install_zsh \
	 install_martians_mono_font \
	 set_font_martians_on_vscode \
	 install-git \
	 configure_git \
	 configure_git_aliases \
	 install_ohmyzsh

update_apt:
	sudo apt update

install_postman:
	@echo "Instalando Postman..."
	sudo snap install postman
	@echo "Postman instalado."

install_go:
	@echo "Instalando Go..."
	sudo apt install -y golang
	@echo "Go instalado."

install_vscode:
	@echo "Instalando Visual Studio Code..."
	sudo apt install -y software-properties-common apt-transport-https wget
	wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | sudo tee /usr/share/keyrings/packages.microsoft.gpg > /dev/null
	echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
	sudo apt install -y code
	@echo "Visual Studio Code instalado."

install_intellij:
	@echo "Instalando IntelliJ IDEA Community Edition..."
	sudo snap install intellij-idea-community --classic
	@echo "IntelliJ IDEA Community Edition instalado."

install_zsh:
	@echo "Instalando Zsh..."
	sudo apt install -y zsh
	@echo "Zsh instalado."

install_martians_mono_font:
	@echo "Instalando fonte Evil Martians Mono..."
	wget -O martian-mono.zip https://github.com/evilmartians/mono/archive/refs/tags/v1.0.0.zip
	unzip martian-mono.zip
	sudo mv mono-1.0.0/fonts/ttf/*.ttf /usr/share/fonts/
	sudo fc-cache -fv
	rm -rf mono-1.0.0 martian-mono.zip
	@echo "Fonte Evil Martians Mono instalada."

set_font_martians_on_vscode:
	@echo "Configurando fonte Martians Mono no VS Code..."
	mkdir -p ~/.config/Code/User/
	echo '{"editor.fontFamily": "\"Martian Mono\", Consolas, \"Courier New\", monospace"}' > ~/.config/Code/User/settings.json
	@echo "Fonte configurada."
	
install-git:
	@echo "Instalando git..."
	sudo apt install git -y
	@echo "Git instalado!"

configure_git:
	@echo "Configurando Git..."
	git config --global user.name "Fernando Batista"
	git config --global user.email "fernandohsbatista@gmail.com"
	git config push.default current
	@echo "Git configurado."

configure_git_aliases:
	@echo "Configurando aliases do Git..."
	git config --global alias.st "status"
	git config --global alias.cm "commit -m"
	git config --global alias.ck "checkout"
	git config --global alias.pusho "push origin"
	git config --global alias.blog "log --oneline"
	@echo "Aliases do Git configurados."

install_ohmyzsh:
	sh -c "$$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

