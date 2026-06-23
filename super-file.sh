#!/bin/bash

# COLORS - GAMING BURST THEME
R="\e[1;31m" # Bright Red
G="\e[1;32m" # Green
Y="\e[1;33m" # Yellow
B="\e[1;34m" # Blue
C="\e[1;36m" # Cyan (Primary Theme Color)
M="\e[1;35m" # Magenta
W="\e[1;37m" # White
N="\e[0m"    # Reset

# GAMING BURST ASCII ART
print_logo() {
    echo -e "\n${C}╔══════════════════════════════════════════════════════════╗${N}"
    echo -e "${C}║${W}       ██████╗ █████╗ ███╗   ███╗██╗███╗   ██╗ ██████╗    ${C}║${N}"
    echo -e "${C}║${W}      ██╔════╝██╔══██╗████╗ ████║██║████╗  ██║██╔════╝    ${C}║${N}"
    echo -e "${C}║${W}      ██║  ███╗███████║██╔████╔██║██║██╔██╗ ██║██║  ███╗  ${C}║${N}"
    echo -e "${C}║${W}      ██║   ██║██╔══██║██║╚██╔╝██║██║██║╚██╗██║██║   ██║  ${C}║${N}"
    echo -e "${C}║${W}      ╚██████╔╝██║  ██║██║ ╚═╝ ██║██║██║ ╚████║╚██████╔╝  ${C}║${N}"
    echo -e "${C}║${W}       ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝   ${C}║${N}"
    echo -e "${C}║${W}       ██████╗ ██╗   ██╗██████╗ ███████╗████████╗         ${C}║${N}"
    echo -e "${C}║${W}       ██╔══██╗██║   ██║██╔══██╗██╔════╝╚══██╔══╝         ${C}║${N}"
    echo -e "${C}║${W}       ██████╔╝██║   ██║██████╔╝███████╗   ██║            ${C}║${N}"
    echo -e "${C}║${W}       ██╔══██╗██║   ██║██╔══██╗╚════██║   ██║            ${C}║${N}"
    echo -e "${C}║${W}       ██████╔╝╚██████╔╝██║  ██║███████║   ██║            ${C}║${N}"
    echo -e "${C}║${W}       ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝   ╚═╝            ${C}║${N}"
    echo -e "${C}║${Y}                     N E T W O R K                        ${C}║${N}"
    echo -e "${C}╚══════════════════════════════════════════════════════════╝${N}"
    echo -e "${Y}                 Made by Gaming Burst                 ${N}\n"
}

print_status() {
    local text="$1"
    local color="$2"
    echo -e "\n${C}▶▶${color} ${text}${N}\n"
}

print_divider() {
    echo -e "${C}══════════════════════════════════════════════════════════${N}"
}

# MAIN MENU LOOP
while true; do
    clear
    print_logo
    echo -e "${C}╔══════════════════════════════════════════════════════════╗${N}"
    echo -e "${C}║${Y}                  DEVELOPMENT CONSOLE                     ${C}║${N}"
    echo -e "${C}╠══════════════════════════════════════════════════════════╣${N}"
    echo -e "${C}║${W}                                                          ${C}║${N}"
    echo -e "${C}║${W}  [${Y}1${W}] 🚀 GitHub VPS Maker                                 ${C}║${N}"
    echo -e "${C}║${W}  [${Y}2${W}] 🔧 IDX Tool Setup                                   ${C}║${N}"
    echo -e "${C}║${W}  [${Y}3${W}] ⚡ IDX VPS Maker                                    ${C}║${N}"
    echo -e "${C}║${W}  [${Y}4${W}] 🌐 Real VPS (Any + KVM)                             ${C}║${N}"
    echo -e "${C}║${W}  [${Y}5${W}] 📦 VM Installer                                     ${C}║${N}"
    echo -e "${C}║${W}  [${Y}6${W}] ❌ Exit                                             ${C}║${N}"
    echo -e "${C}║${W}                                                          ${C}║${N}"
    echo -e "${C}╚══════════════════════════════════════════════════════════╝${N}"
    echo -ne "\n${C}▶▶${W} Select Option [${Y}1-6${W}] : ${Y}"
    read -p "" op
    echo -ne "${N}"

    case $op in
        # =========================================================
        # (1) GITHUB VPS MAKER - ENHANCED WITH GAMING BURST THEME
        # =========================================================
        1)
            clear
            print_logo
            print_status "🚀 GITHUB VPS MAKER" "$C"
            print_divider
            echo
            RAM=15000
            CPU=4
            DISK_SIZE=100G
            CONTAINER_NAME=hopingboyz
            IMAGE_NAME=hopingboyz/debain12
            VMDATA_DIR="$PWD/vmdata"
            
            echo -e "${C}╔══════════════════════════════════════════════════════════╗${N}"
            echo -e "${C}║${W}                GITHUB VPS CONFIGURATION                  ${C}║${N}"
            echo -e "${C}╚══════════════════════════════════════════════════════════╝${N}\n"
            echo -e "${Y}📁 Creating VM data directory...${N}"
            mkdir -p "$VMDATA_DIR"
            
            echo -e "\n${C}┌──────────────────────────────────────────────────────┐${N}"
            echo -e "${C}│${W} ${G}RAM${W}       : ${Y}$RAM MB${W}                                 ${C}│${N}"
            echo -e "${C}│${W} ${G}CPU${W}       : ${Y}$CPU cores${W}                                   ${C}│${N}"
            echo -e "${C}│${W} ${G}DISK SIZE${W} : ${Y}$DISK_SIZE${W}                                      ${C}│${N}"
            echo -e "${C}│${W} ${G}NAME${W}      : ${Y}$CONTAINER_NAME${W}                                ${C}│${N}"
            echo -e "${C}│${W} ${G}IMAGE${W}     : ${Y}$IMAGE_NAME${W}                             ${C}│${N}"
            echo -e "${C}│${W} ${G}TYPE${W}      : ${Y}GitHub Docker VPS${W}                          ${C}│${N}"
            echo -e "${C}└──────────────────────────────────────────────────────┘${N}\n"
            
            echo -e "${C}▶▶${W} Launching GitHub VPS...${N}"
            echo -e "${C}──────────────────────────────────────────────────────${N}"
            docker run -it --rm \
              --name "$CONTAINER_NAME" \
              --device /dev/kvm \
              -v "$VMDATA_DIR":/vmdata \
              -e RAM="$RAM" \
              -e CPU="$CPU" \
              -e DISK_SIZE="$DISK_SIZE" \
              "$IMAGE_NAME"
              
            echo -e "\n${C}══════════════════════════════════════════════════════════${N}"
            echo -e "${C}▶▶${W} GitHub VPS session ended.${N}"
            echo -ne "${C}▶▶${W} Press Enter to return to main menu...${N}"
            read -p ""
            ;;

        # =========================================================
        # (2) IDX TOOL SETUP - ENHANCED WITH GAMING BURST THEME
        # =========================================================
        2)
            clear
            print_logo
            print_status "🔧 IDX TOOL SETUP" "$C"
            print_divider
            echo
            echo -e "${C}╔══════════════════════════════════════════════════════════╗${N}"
            echo -e "${C}║${W}               IDX DEVELOPMENT TOOL SETUP                 ${C}║${N}"
            echo -e "${C}╚══════════════════════════════════════════════════════════╝${N}\n"
            echo -e "${Y}🧹 Cleaning up old files...${N}"
            cd
            rm -rf myapp
            rm -rf flutter
            cd vps123
            
            if [ ! -d ".idx" ]; then
                echo -e "${G}📁 Creating .idx directory...${N}"
                mkdir .idx
                cd .idx
                echo -e "${C}📝 Creating dev.nix configuration...${N}"
                echo -e "${C}──────────────────────────────────────────────────────${N}"
cat <<EOF > dev.nix
{ pkgs, ... }: {
  channel = "stable-24.05";
  packages = with pkgs; [
    unzip
    openssh
    git
    qemu_kvm
    sudo
    cdrkit
    cloud-utils
    qemu
  ];
  env = {
    EDITOR = "nano";
  };
  idx = {
    extensions = [
      "Dart-Code.flutter"
      "Dart-Code.dart-code"
    ];
    workspace = {
      onCreate = {
      };
      onStart = {
      };
    };
    previews = {
      enable = false;
    };
  };
}
EOF
                echo -e "${C}──────────────────────────────────────────────────────${N}"
                echo -e "\n${G}✅ IDX TOOL SETUP COMPLETE!${N}"
                echo -e "${C}┌──────────────────────────────────────────────────────┐${N}"
                echo -e "${C}│${W} ${G}Status${W}   : ${Y}Ready to use${W}                                ${C}│${N}"
                echo -e "${C}│${W} ${G}Location${W} : ${Y}~/vps123/.idx${W}                               ${C}│${N}"
                echo -e "${C}│${W} ${G}Tool${W}     : ${Y}IDX Development Environment${W}                 ${C}│${N}"
                echo -e "${C}│${W} ${G}Version${W}  : ${Y}Stable 24.05${W}                                ${C}│${N}"
                echo -e "${C}└──────────────────────────────────────────────────────┘${N}"
            else
                echo -e "${C}┌──────────────────────────────────────────────────────┐${N}"
                echo -e "${C}│${Y} ⚠ IDX Tool already setup — skipping.${W}                  ${C}│${N}"
                echo -e "${C}│${W} Location: ${Y}~/vps123/.idx${W}                               ${C}│${N}"
                echo -e "${C}└──────────────────────────────────────────────────────┘${N}"
            fi
            
            echo -e "\n${C}══════════════════════════════════════════════════════════${N}"
            echo -ne "${C}▶▶${W} Press Enter to return to main menu...${N}"
            read -p ""
            ;;

        # =========================================================
        # (3) IDX VPS MAKER — ENHANCED WITH GAMING BURST THEME
        # =========================================================
        3)
            clear
            print_logo
            print_status "⚡ IDX VPS MAKER" "$C"
            print_divider
            echo
            echo -e "${C}╔══════════════════════════════════════════════════════════╗${N}"
            echo -e "${C}║${W}                  IDX VPS CREATION TOOL                   ${C}║${N}"
            echo -e "${C}╚══════════════════════════════════════════════════════════╝${N}\n"
            echo -e "${C}📡 Connecting to GitHub repository...${N}"
            echo -e "${C}──────────────────────────────────────────────────────${N}"
            echo -e "\n${C}▶▶${W} Executing IDX VPS Maker script...${N}"
            echo -e "${C}──────────────────────────────────────────────────────${N}"
            bash <(curl -s https://raw.githubusercontent.com/jishnu-limited/app-build-journey/refs/heads/main/vpmakerkvmidx)
            
            echo -e "\n${C}══════════════════════════════════════════════════════════${N}"
            echo -e "${C}▶▶${W} IDX VPS Maker execution completed.${N}"
            echo -ne "${C}▶▶${W} Press Enter to return to main menu...${N}"
            read -p ""
            ;;

        # =========================================================
        # (4) REAL VPS (ANY + KVM)
        # =========================================================
        4)
            clear
            print_logo
            print_status "🌐 REAL VPS (ANY + KVM)" "$C"
            print_divider
            echo
            echo -e "${C}╔══════════════════════════════════════════════════════════╗${N}"
            echo -e "${C}║${W}               REAL VPS DEPLOYMENT MODULE                 ${C}║${N}"
            echo -e "${C}╚══════════════════════════════════════════════════════════╝${N}\n"
            echo -e "${Y}🔍 Running disk & system preparation (dd.sh)...${N}"
            echo -e "${C}──────────────────────────────────────────────────────${N}"
            bash <(curl -s https://raw.githubusercontent.com/nobita329/The-Coding-Hub/refs/heads/main/srv/vm/dd.sh)
            
            echo -e "\n${G}✅ Disk preparation completed.${N}\n"
            echo -e "${Y}🚀 Launching Real VPS installer (vm2.sh)...${N}"
            echo -e "${C}──────────────────────────────────────────────────────${N}"
            bash <(curl -s https://raw.githubusercontent.com/JishnuTheGamer/Vps/refs/heads/main/n)
            
            echo -e "\n${C}══════════════════════════════════════════════════════════${N}"
            echo -e "${C}▶▶${W} Real VPS process finished.${N}"
            echo -ne "${C}▶▶${W} Press Enter to return to main menu...${N}"
            read -p ""
            ;;

        # =========================================================
        # (5) VM INSTALLER
        # =========================================================
        5)
            clear
            print_logo
            print_status "📦 VM INSTALLER" "$C"
            print_divider
            echo
            echo -e "${C}╔══════════════════════════════════════════════════════════╗${N}"
            echo -e "${C}║${W}                  VM INSTALLER SCRIPT                     ${C}║${N}"
            echo -e "${C}╚══════════════════════════════════════════════════════════╝${N}\n"
            echo -e "${Y}🚀 Launching Super VM Installer...${N}"
            echo -e "${C}──────────────────────────────────────────────────────${N}"
            bash <(curl -sL https://raw.githubusercontent.com/gamingburstpc-web/SuperInstaller/refs/heads/main/supermanager.sh)
            
            echo -e "\n${C}══════════════════════════════════════════════════════════${N}"
            echo -e "${C}▶▶${W} VM Installer process finished.${N}"
            echo -ne "${C}▶▶${W} Press Enter to return to main menu...${N}"
            read -p ""
            ;;

        # =========================================================
        # (6) EXIT - ENHANCED WITH GAMING BURST THEME
        # =========================================================
        6)
            clear
            print_logo
            echo -e "${R}══════════════════════════════════════════════════════════${N}"
            echo -e "${W}                   SESSION TERMINATED                     ${N}"
            echo -e "${R}══════════════════════════════════════════════════════════${N}\n"
            echo -e "${C}┌──────────────────────────────────────────────────────┐${N}"
            echo -e "${C}│${W}      Thank you for using Gaming Burst Network!       ${C}│${N}"
            echo -e "${C}│${Y}      Made with ❤️ by Gaming Burst                    ${C}│${N}"
            echo -e "${C}└──────────────────────────────────────────────────────┘${N}"
            echo -e "\n${Y}👋 Goodbye! Come back soon...${N}\n"
            sleep 2
            exit 0
            ;;

        *)
            echo -e "\n${R}╔══════════════════════════════════════════════════════════╗${N}"
            echo -e "${R}║${W} ❌ INVALID OPTION!                                       ${R}║${N}"
            echo -e "${R}║${Y} Please choose between 1-6 only                           ${R}║${N}"
            echo -e "${R}╚══════════════════════════════════════════════════════════╝${N}"
            sleep 2
            ;;
    esac
done
