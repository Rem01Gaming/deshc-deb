# This file is part of Origami Kernel Manager.
#
# Origami Kernel Manager is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Origami Kernel Manager is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Origami Kernel Manager.  If not, see <https://www.gnu.org/licenses/>.
#
# Copyright (C) 2023-2024 Rem01Gaming

O = out
.PHONY: all

all:
	@echo "Available commands:"
	@echo "make pack-deb-termux : Build deb package"
	@echo "make pack-deb-linux : Clear generated files"

pack-deb-termux:
	@mkdir -v $(O)
	@mkdir -v $(O)/deb
	@mkdir -pv $(O)/deb/data/data/com.termux/files/usr
	@mkdir -pv $(O)/deb/data/data/com.termux/files/usr/bin
	@cp -rv src/termux/* $(O)/deb/data/data/com.termux/files/usr/bin/
	@cp -rv dpkg-conf $(O)/deb/DEBIAN
	@printf "\033[1;38;2;254;228;208m[+] Build packages.\033[0m\n"&&sleep 1s
	@chmod -Rv 755 $(O)/deb/DEBIAN
	@chmod -Rv 755 $(O)/deb/data/data/com.termux/files/usr/bin
	@chmod -Rv 777 $(O)/deb/data/data/com.termux/files/usr/bin/deshc
	@cd $(O)/deb&&dpkg -b . ../../deshc-termux.deb
	@printf "\033[1;38;2;254;228;208m    .^.   .^.\n"
	@printf "    /⋀\\_ﾉ_/⋀\\ \n"
	@printf "   /ﾉｿﾉ\\ﾉｿ丶)|\n"
	@printf "  |ﾙﾘﾘ >   )ﾘ\n"
	@printf "  ﾉノ㇏ Ｖ ﾉ|ﾉ\n"
	@printf "        ⠁⠁\n"
	@printf "\033[1;38;2;254;228;208m[*] Build done,package: deshc-termux.deb\033[0m\n"
	@rm -rf $(O)

pack-deb-linux:
	@mkdir -v $(O)
	@mkdir -v $(O)/deb
	@mkdir -pv $(O)/deb/usr
	@mkdir -pv $(O)/deb/usr/bin
	@cp -rv src/linux/* $(O)/deb/usr/bin/
	@cp -rv dpkg-conf $(O)/deb/DEBIAN
	@printf "\033[1;38;2;254;228;208m[+] Build packages.\033[0m\n"&&sleep 1s
	@chmod -Rv 755 $(O)/deb/DEBIAN
	@chmod -Rv 755 $(O)/deb/usr/bin
	@chmod -Rv 777 $(O)/deb/usr/bin/deshc
	@cd $(O)/deb&&dpkg -b . ../../deshc-linux.deb
	@printf "\033[1;38;2;254;228;208m    .^.   .^.\n"
	@printf "    /⋀\\_ﾉ_/⋀\\ \n"
	@printf "   /ﾉｿﾉ\\ﾉｿ丶)|\n"
	@printf "  |ﾙﾘﾘ >   )ﾘ\n"
	@printf "  ﾉノ㇏ Ｖ ﾉ|ﾉ\n"
	@printf "        ⠁⠁\n"
	@printf "\033[1;38;2;254;228;208m[*] Build done,package: deshc-termux.deb\033[0m\n"
	@rm -rf $(O)
