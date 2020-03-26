#!/bin/bash
echo "upnaam shuru ho gya hai..."

if [[ "$OSTYPE" == "linux"* ]]; then
    echo "alias nya_repo='git init'" >>~/.bashrc
	echo "alias origin_add_kro='git remote add origin'" >>~/.bashrc
	echo "alias chaapo='git clone'" >>~/.bashrc
	echo "alias changes_add_kro='git add'" >>~/.bashrc
	echo "alias sab_add_krdo='git add .'" >>~/.bashrc
	echo "alias commitment_lelo='git commit'" >>~/.bashrc
	echo "alias changes_dikhao='git diff'" >>~/.bashrc
	echo "alias status_batao='git status'" >>~/.bashrc
	echo "alias file_hatao='git rm'" >>~/.bashrc
	echo "alias logs_dikhao='git log'" >>~/.bashrc
	echo "alias branch_dikhao='git branch'" >>~/.bashrc
	echo "alias nya_branch_bnao='git branch'" >>~/.bashrc
	echo "alias nya_branch_pe_jao='git checkout -b'" >>~/.bashrc
	echo "alias branch_delete_kro='git branch -d'" >>~/.bashrc
	echo "alias doosri_branch_pe_jao='git branch'" >>~/.bashrc
	echo "alias merge_kro='git merge'" >>~/.bashrc
	echo "alias changes_bhejo='git push'" >>~/.bashrc
	echo "alias changes_mangao='git pull'" >>~/.bashrc
	echo "alias changes_stash_kro='git stash'" >>~/.bashrc
	echo "alias stash_dikhao='git stash list'" >>~/.bashrc
	echo "alias sabse_nya_change_lagao='git stash pop'" >>~/.bashrc
	echo " " >>~/.bashrc
	source ~/.bashrc
elif [[ "$OSTYPE" == "darwin"* ]]; then

	read -p "kon sa terminal? (bash/zsh) " terminal
	if [[ $terminal == bash ]]; then
		sourcefile="bashrc"
	else
		sourcefile="zshrc"
	fi
	echo "sourcefile : $sourcefile"
	echo "alias nya_repo='git init'" >>~/.$sourcefile
	echo "alias origin_add_kro='git remote add origin'" >>~/.$sourcefile
	echo "alias chaapo='git clone'" >>~/.$sourcefile
	echo "alias changes_add_kro='git add'" >>~/.$sourcefile
	echo "alias sab_add_krdo='git add .'" >>~/.$sourcefile
	echo "alias commitment_lelo='git commit'" >>~/.$sourcefile
	echo "alias changes_dikhao='git diff'" >>~/.$sourcefile
	echo "alias status_batao='git status'" >>~/.$sourcefile
	echo "alias file_hatao='git rm'" >>~/.$sourcefile
	echo "alias logs_dikhao='git log'" >>~/.$sourcefile
	echo "alias branch_dikhao='git branch'" >>~/.$sourcefile
	echo "alias nya_branch_bnao='git branch'" >>~/.$sourcefile
	echo "alias nya_branch_pe_jao='git checkout -b'" >>~/.$sourcefile
	echo "alias branch_delete_kro='git branch -d'" >>~/.$sourcefile
	echo "alias doosri_branch_pe_jao='git branch'" >>~/.$sourcefile
	echo "alias merge_kro='git merge'" >>~/.$sourcefile
	echo "alias changes_bhejo='git push'" >>~/.$sourcefile
	echo "alias changes_mangao='git pull'" >>~/.$sourcefile
	echo "alias changes_stash_kro='git stash'" >>~/.$sourcefile
	echo "alias stash_dikhao='git stash list'" >>~/.$sourcefile
	echo "alias sabse_nya_change_lagao='git stash pop'" >>~/.$sourcefile
	echo " " >>~/.$sourcefile
	source ~/.$sourcefile
else
        "# Unknown."
fi
