#
#
#


#######################################
# Echo a message in the specified color
# Arguments:
#   COLOR
#   MESSAGE
# Outputs:
#   Writes to stdout
#######################################
function print_color(){
  NC="\033[0m"
  case $1 in
      "black")        COLOR="\033[0;30m" ;;
      "dark_grey")    COLOR="\033[1;30m" ;;
      "red")          COLOR="\033[0;31m" ;;
      "light_red" )   COLOR="\033[1;31m" ;;
      "green")        COLOR="\033[0;32m" ;;
      "light_green")  COLOR="\033[1;32m" ;;
      "orange")       COLOR="\033[0;33m" ;;
      "yellow")       COLOR="\033[1;33m" ;;
      "blue")         COLOR="\033[0;34m" ;;
      "light_blue")   COLOR="\033[1;34m" ;;
      "purple")       COLOR="\033[0;35m" ;;
      "light_purple") COLOR="\033[1;35m" ;;
      "cyan")         COLOR="\033[0;36m" ;;
      "light_cyan")   COLOR="\033[1;36m" ;;
      "light_grey")   COLOR="\033[0;37m" ;;
      "white")        COLOR="\033[1;37m" ;;
      "*")            COLOR=$NC ;;
  esac
 
  echo -e "${COLOR} $2 ${NC}"
}

#######################################
# Checks a service to be running and
# echoes status message
# Arguments:
#   SERVICE
# Outputs:
#   Writes to stdout
#######################################
function check_service_status() {
  is_service_active=$(systemctl is-active $1)

  if [ $is_service_active = "active"]; then
    print_color "green" "$1 Service is active"
  else
    print_color "red" "$1 Service is not active"
    exit 1
  fi
}

