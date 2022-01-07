# Refernces:
# https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux
# Reset
export coff='\033[0m'       # Text Reset

# Regular Colors
export black='\033[0;30m'        # Black
export red='\033[0;31m'          # Red
export green='\033[0;32m'        # Green
export yellow='\033[0;33m'       # Yellow
export blue='\033[0;34m'         # Blue
export purple='\033[0;35m'       # Purple
export cyan='\033[0;36m'         # Cyan
export white='\033[0;37m'        # White

# Bold
export bblack='\033[1;30m'       # Black
export bred='\033[1;31m'         # Red
export bgreen='\033[1;32m'       # Green
export byellow='\033[1;33m'      # Yellow
export bblue='\033[1;34m'        # Blue
export bpurple='\033[1;35m'      # Purple
export bcyan='\033[1;36m'        # Cyan
export bwhite='\033[1;37m'       # White

# Underline
export ublack='\033[4;30m'       # Black
export ured='\033[4;31m'         # Red
export ugreen='\033[4;32m'       # Green
export uyellow='\033[4;33m'      # Yellow
export ublue='\033[4;34m'        # Blue
export upurple='\033[4;35m'      # Purple
export ucyan='\033[4;36m'        # Cyan
export uwhite='\033[4;37m'       # White

# Background
export on_black='\033[40m'       # Black
export on_red='\033[41m'         # Red
export on_green='\033[42m'       # Green
export on_yellow='\033[43m'      # Yellow
export on_blue='\033[44m'        # Blue
export on_purple='\033[45m'      # Purple
export on_cyan='\033[46m'        # Cyan
export on_white='\033[47m'       # White

# High Intensity
export iblack='\033[0;90m'       # Black
export ired='\033[0;91m'         # Red
export igreen='\033[0;92m'       # Green
export iyellow='\033[0;93m'      # Yellow
export iblue='\033[0;94m'        # Blue
export ipurple='\033[0;95m'      # Purple
export icyan='\033[0;96m'        # Cyan
export iwhite='\033[0;97m'       # White

# Bold High Intensity
export biblack='\033[1;90m'      # Black
export bired='\033[1;91m'        # Red
export bigreen='\033[1;92m'      # Green
export biyellow='\033[1;93m'     # Yellow
export biblue='\033[1;94m'       # Blue
export bipurple='\033[1;95m'     # Purple
export bicyan='\033[1;96m'       # Cyan
export biwhite='\033[1;97m'      # White

# High Intensity backgrounds
export on_iblack='\033[0;100m'   # Black
export on_ired='\033[0;101m'     # Red
export on_igreen='\033[0;102m'   # Green
export on_iyellow='\033[0;103m'  # Yellow
export on_iblue='\033[0;104m'    # Blue
export on_ipurple='\033[0;105m'  # Purple
export on_icyan='\033[0;106m'    # Cyan
export on_iwhite='\033[0;107m'   # White


red(){ echo -e "${coff}${red}$1${coff}\c" ; }
green(){ echo -e "${coff}${green}$1${coff}\c" ; }
yellow(){ echo -e "${coff}${yellow}$1${coff}\c" ; }



black(){ echo -e "${coff}${black}$1${coff}\c" ; }
red(){ echo -e "${coff}${red}$1${coff}\c" ; }
green(){ echo -e "${coff}${green}$1${coff}\c" ; }
yellow(){ echo -e "${coff}${yellow}$1${coff}\c" ; }
blue(){ echo -e "${coff}${blue}$1${coff}\c" ; }
purple(){ echo -e "${coff}${purple}$1${coff}\c" ; }
cyan(){ echo -e "${coff}${cyan}$1${coff}\c" ; }
white(){ echo -e "${coff}${white}$1${coff}\c" ; }
bblack(){ echo -e "${coff}${bblack}$1${coff}\c" ; }
bred(){ echo -e "${coff}${bred}$1${coff}\c" ; }
bgreen(){ echo -e "${coff}${bgreen}$1${coff}\c" ; }
byellow(){ echo -e "${coff}${byellow}$1${coff}\c" ; }
bblue(){ echo -e "${coff}${bblue}$1${coff}\c" ; }
bpurple(){ echo -e "${coff}${bpurple}$1${coff}\c" ; }
bcyan(){ echo -e "${coff}${bcyan}$1${coff}\c" ; }
bwhite(){ echo -e "${coff}${bwhite}$1${coff}\c" ; }
ublack(){ echo -e "${coff}${ublack}$1${coff}\c" ; }
ured(){ echo -e "${coff}${ured}$1${coff}\c" ; }
ugreen(){ echo -e "${coff}${ugreen}$1${coff}\c" ; }
uyellow(){ echo -e "${coff}${uyellow}$1${coff}\c" ; }
ublue(){ echo -e "${coff}${ublue}$1${coff}\c" ; }
upurple(){ echo -e "${coff}${upurple}$1${coff}\c" ; }
ucyan(){ echo -e "${coff}${ucyan}$1${coff}\c" ; }
uwhite(){ echo -e "${coff}${uwhite}$1${coff}\c" ; }
on_black(){ echo -e "${coff}${on_black}$1${coff}\c" ; }
on_red(){ echo -e "${coff}${on_red}$1${coff}\c" ; }
on_green(){ echo -e "${coff}${on_green}$1${coff}\c" ; }
on_yellow(){ echo -e "${coff}${on_yellow}$1${coff}\c" ; }
on_blue(){ echo -e "${coff}${on_blue}$1${coff}\c" ; }
on_purple(){ echo -e "${coff}${on_purple}$1${coff}\c" ; }
on_cyan(){ echo -e "${coff}${on_cyan}$1${coff}\c" ; }
on_white(){ echo -e "${coff}${on_white}$1${coff}\c" ; }
iblack(){ echo -e "${coff}${iblack}$1${coff}\c" ; }
ired(){ echo -e "${coff}${ired}$1${coff}\c" ; }
igreen(){ echo -e "${coff}${igreen}$1${coff}\c" ; }
iyellow(){ echo -e "${coff}${iyellow}$1${coff}\c" ; }
iblue(){ echo -e "${coff}${iblue}$1${coff}\c" ; }
ipurple(){ echo -e "${coff}${ipurple}$1${coff}\c" ; }
icyan(){ echo -e "${coff}${icyan}$1${coff}\c" ; }
iwhite(){ echo -e "${coff}${iwhite}$1${coff}\c" ; }
biblack(){ echo -e "${coff}${biblack}$1${coff}\c" ; }
bired(){ echo -e "${coff}${bired}$1${coff}\c" ; }
bigreen(){ echo -e "${coff}${bigreen}$1${coff}\c" ; }
biyellow(){ echo -e "${coff}${biyellow}$1${coff}\c" ; }
biblue(){ echo -e "${coff}${biblue}$1${coff}\c" ; }
bipurple(){ echo -e "${coff}${bipurple}$1${coff}\c" ; }
bicyan(){ echo -e "${coff}${bicyan}$1${coff}\c" ; }
biwhite(){ echo -e "${coff}${biwhite}$1${coff}\c" ; }
on_iblack(){ echo -e "${coff}${on_iblack}$1${coff}\c" ; }
on_ired(){ echo -e "${coff}${on_ired}$1${coff}\c" ; }
on_igreen(){ echo -e "${coff}${on_igreen}$1${coff}\c" ; }
on_iyellow(){ echo -e "${coff}${on_iyellow}$1${coff}\c" ; }
on_iblue(){ echo -e "${coff}${on_iblue}$1${coff}\c" ; }
on_ipurple(){ echo -e "${coff}${on_ipurple}$1${coff}\c" ; }
on_icyan(){ echo -e "${coff}${on_icyan}$1${coff}\c" ; }
on_iwhite(){ echo -e "${coff}${on_iwhite}$1${coff}\c" ; }