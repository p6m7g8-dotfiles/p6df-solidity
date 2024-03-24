# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::solidity::deps()
#
#>
######################################################################
p6df::modules::solidity::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-github
  )
}

######################################################################
#<
#
# Function: p6df::modules::solidity::brew()
#
#>
######################################################################
p6df::modules::solidity::brew() {

  brew tap ethereum/ethereum
  p6df::modules::homebrew::cli::brew::install solidity

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::solidity::langs()
#
#>
######################################################################
p6df::modules::solidity::langs() {

  p6_js_npm_global_install "solc"

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::solidity::vscodes()
#
#  Environment:	 LLL
#>
######################################################################
p6df::modules::solidity::vscodes() {

  code --install-extension Aniket-Engg.sol-profiler-vscode
  code --install-extension JuanBlanco.solidity
  code --install-extension MythX.mythxvsc
  code --install-extension tintinweb.solidity-visual-auditor
  code --install-extension tintinweb.vscode-solidity-flattener
  code --install-extension tintinweb.vscode-solidity-language
  code --install-extension tintinweb.ethereum-security-bundle
  code --install-extension tintinweb.graphviz-interactive-preview
  code --install-extension tintinweb.solidity-metrics
  code --install-extension tintinweb.vscode-ethover
  code --install-extension tintinweb.vscode-inline-bookmarks
  code --install-extension tintinweb.vscode-LLL
  code --install-extension tintinweb.vscode-vyper

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::solidity::clones()
#
#  Environment:	 P6_DFZ_SRC_FOCUSED_DIR
#>
######################################################################
p6df::modules::solidity::clones() {

  p6_github_login_clone "ethereum" "$P6_DFZ_SRC_FOCUSED_DIR"

  p6_return_void
}
