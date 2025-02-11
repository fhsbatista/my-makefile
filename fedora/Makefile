.PHONY: all \
	install_go \
	install_postman \
	install_chrome \
	install_vscode \
	install_docker \
	install_intellij \
	install_zsh \
	install_fork \
	install_martians_mono_font \
	set_font_martians_on_vscode \
	configure_git \
	configure_git_aliases

all: install_go \
	install_postman \
	install_chrome \
	install_vscode \
	install_docker \
	install_intellij \
	install_zsh \
	install_fork \
	install_martians_mono_font \
	set_font_martians_on_vscode \
	configure_git \
	configure_git_aliases

install_postman:
	@echo "Instalando Postman..."
	flatpak install -y flathub com.getpostman.Postman
	@echo "Postman instalado."

install_go:
	@echo "Instalando Go..."
	sudo dnf install -y golang
	@echo "Go instalado."

install_chrome:
	@echo "Instalando Google Chrome..."
	sudo dnf install -y google-chrome-stable
	@echo "Google Chrome instalado."

install_vscode:
	@echo "Instalando Visual Studio Code..."
	sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
	echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo
	sudo dnf install -y code
	@echo "Visual Studio Code instalado."

install_docker:
	@echo "Instalando Docker..."
	sudo dnf install -y dnf-plugins-core
	sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
	sudo dnf install -y docker-ce docker-ce-cli containerd.io
	sudo systemctl enable --now docker
	sudo usermod -aG docker $(USER)
	@echo "Docker instalado."

install_intellij:
	@echo "Instalando IntelliJ IDEA Community Edition..."
	flatpak install -y flathub com.jetbrains.IntelliJ-IDEA-Community
	@echo "IntelliJ IDEA Community Edition instalado."

install_zsh:
	@echo "Instalando Zsh..."
	sudo dnf install -y zsh
	@echo "Zsh instalado."

install_martians_mono_font:
	@echo "Instalando fonte Martian Mono..."
	curl -L -o martian-mono.zip https://github.com/evilmartians/mono/archive/refs/tags/v1.0.0.zip
	unzip martian-mono.zip
	mkdir -p ~/.local/share/fonts
	mv mono-1.0.0/fonts/ttf/*.ttf ~/.local/share/fonts/
	fc-cache -f -v
	rm -rf mono-1.0.0 martian-mono.zip
	@echo "Fonte Martian Mono instalada."

set_font_martians_on_vscode:
	@echo "Configurando fonte Martian Mono no VS Code..."
	mkdir -p ~/.config/Code/User
	echo '{"editor.fontFamily": "\"Martian Mono\", Consolas, \"Courier New\", monospace"}' > ~/.config/Code/User/settings.json
	@echo "Fonte configurada no VS Code."

install_fork:
	@echo "Instalando Fork..."
	flatpak install -y flathub io.github.DanilGoncharuk.Fork
	@echo "Fork instalado."

configure_git:
	@echo "Configurando Git..."
	git config --global user.name "Fernando Batista"
	git config --global user.email "fernandohsbatista@gmail.com"
	@echo "Git configurado."

configure_git_aliases:
	@echo "Configurando aliases do Git..."
	git config --global alias.st "status"
	git config --global alias.cm "commit -m"
	git config --global alias.ck "checkout"
	git config --global alias.pusho "push origin"
	git config --global alias.blog "log --oneline"
	@echo "Aliases do Git configurados."
