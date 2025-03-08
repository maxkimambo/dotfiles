#!/usr/bin/env python3
import logging
import os
import shutil
import subprocess
import sys

logger = logging.basicConfig(level=logging.INFO)
log = logging.getLogger("Dot-Installer")

DOTFILES_DIR = os.path.expanduser("~/.dotfiles")
REPO_URL = "https://github.com/maxkimambo/dotfiles.git"
COMMON_FILES = {
    ".vimrc": ".vimrc",
    ".gitconfig": ".gitconfig",
    ".git_ignore_global": ".git_ignore_global",
    "env.inc": "env.inc",
    "aliases.inc": "aliases.inc",
}
MAX_LINE_LEN = 80


def print_bordered_message(message):

    lines = split_into_lines(message, MAX_LINE_LEN)
    border_line = "-" * (MAX_LINE_LEN + 4)
    message_split_by_lines = ""
    for line in lines:
        message_split_by_lines += f"\n  | {line.ljust(MAX_LINE_LEN)} |"
    formatted_message_text = f"""
  {border_line}"
   {message_split_by_lines}
  {border_line}"""
    return formatted_message_text


def split_into_lines(text, max_len):

    if len(text) <= max_len:
        return [text]

    words = text.split()
    lines = []
    line = ""
    for word in words:
        if len(line) + len(word) <= max_len:
            line += f"{word} "
        else:
            lines.append(line)
            line = f"{word} "
    lines.append(line)
    return lines


def detect_shell():
    shell = os.path.basename(os.getenv("SHELL", "/bin/bash"))
    return "zsh" if shell == "zsh" else "bash"


def get_shell_file():
    shell = detect_shell()
    return {"zsh": "zshrc", "bash": "bashrc"}[shell]


def backup_existing(file):
    log.info("Backing up existing dotfiles")
    home_file = os.path.expanduser(f"~/{file}")
    if os.path.exists(home_file):
        backup = f"{home_file}.bak"
        if not os.path.exists(backup):
            shutil.move(home_file, backup)
            log.info(f"Backed up {home_file} to {backup}")


def create_symlink(src, dst):
    src_path = os.path.join(DOTFILES_DIR, src)
    dst_path = os.path.expanduser(f"~/{dst}")

    try:
        # remove if symlink or file exists
        os.remove(dst_path)
    except FileNotFoundError:
        log.info(f"{dst_path} does not exist. Creating symlink.")
    os.symlink(src_path, dst_path)
    log.info(f"Linked {dst_path} -> {src_path}")


def install():
    header = print_bordered_message("Installer will now setup your dotfiles")
    log.info(header)
    if sys.stdin.isatty():
        print("\t Press Enter to continue or Ctrl-C to cancel")
        log.info("---------------------------")
        input()
    else:
        log.info("Running non-interactively, proceeding automatically")

    shell = detect_shell()
    shell_file = get_shell_file()
    log.info(f"Detected shell: {shell}")

    # Clone/pull repository
    if not os.path.exists(DOTFILES_DIR):
        log.info(f"Cloning {REPO_URL} to {DOTFILES_DIR}")
        subprocess.run(["git", "clone", REPO_URL, DOTFILES_DIR], check=True)
    else:
        log.info(f"Updating {DOTFILES_DIR}")
        subprocess.run(["git", "-C", DOTFILES_DIR, "pull"], check=True)

    # Backup and symlink common files
    for src, dst in COMMON_FILES.items():
        backup_existing(dst)
        create_symlink(src, dst)

    # Backup and symlink shell-specific file
    backup_existing(f".{shell_file}")
    create_symlink(shell_file, f".{shell_file}")
    msg = f"Installation complete. Run 'source ~/{shell_file}' to apply changes."
    print(print_bordered_message(msg))


def uninstall():
    shell = detect_shell()
    shell_file = get_shell_file()
    log.info(
        f"Uninstalling dotfiles for {shell}. This will remove symlinks and restore backups."
    )
    # Remove symlinks and restore backups for common files
    for _, dst in COMMON_FILES.items():
        dst_path = os.path.expanduser(f"~/{dst}")
        backup_path = f"{dst_path}.bak"
        if os.path.islink(dst_path):
            os.remove(dst_path)
            log.info(f"Removed symlink {dst_path}")
        if os.path.exists(backup_path):
            shutil.move(backup_path, dst_path)
            log.info(f"Restored {dst_path} from backup")

    # Remove shell-specific symlink and restore backup
    shell_path = os.path.expanduser(f"~/{shell_file}")
    shell_backup = f"{shell_path}.bak"
    if os.path.islink(shell_path):
        os.remove(shell_path)
        log.info(f"Removed symlink {shell_path}")
    if os.path.exists(shell_backup):
        shutil.move(shell_backup, shell_path)
        log.info(f"Restored {shell_path} from backup")

    if os.path.exists(DOTFILES_DIR):
        shutil.rmtree(DOTFILES_DIR)
        log.info(f"Removed {DOTFILES_DIR}")
    log.info("Dotfiles uninstalled.")


if __name__ == "__main__":
    if len(sys.argv) != 2 or sys.argv[1] not in ["install", "uninstall"]:
        print("Usage: python install.py [install|uninstall]")
        sys.exit(1)
    if sys.argv[1] == "install":
        install()
    else:
        uninstall()
