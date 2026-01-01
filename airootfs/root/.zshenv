if [[ -f ~/.xservstarted ]]; then
  echo Welcome to Spar!
else
  printf "\e[1;37m==========Welcome to Spar! Please wait while the system is set up.==========\e[0m\n"
  mv /usr/share/backgrounds/xfce/xfce-x1.svg /usr/share/backgrounds/xfce/xfce-x.svg
  chmod +x WhiteSur-icon-theme/install.sh
  WhiteSur-icon-theme/install.sh # will install the icon theme to /usr/share/icons
  xfconf-query -c xsettings -p /Net/IconThemeName -s WhiteSur-dark
  touch ~/.xservstarted
  startx /usr/bin/startxfce4 >/dev/null 2>&1
fi
