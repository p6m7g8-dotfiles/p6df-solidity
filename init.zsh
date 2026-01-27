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
  p6df::core::homebrew::cli::brew::install solidity

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
#>
######################################################################
p6df::modules::solidity::vscodes() {

  p6df::modules::vscode::extension::install Aniket-Engg.sol-profiler-vscode
  p6df::modules::vscode::extension::install JuanBlanco.solidity
  p6df::modules::vscode::extension::install MythX.mythxvsc
  p6df::modules::vscode::extension::install tintinweb.solidity-visual-auditor
  p6df::modules::vscode::extension::install tintinweb.vscode-solidity-flattener
  p6df::modules::vscode::extension::install tintinweb.vscode-solidity-language
  p6df::modules::vscode::extension::install tintinweb.ethereum-security-bundle
  p6df::modules::vscode::extension::install tintinweb.graphviz-interactive-preview
  p6df::modules::vscode::extension::install tintinweb.solidity-metrics
  p6df::modules::vscode::extension::install tintinweb.vscode-ethover
  p6df::modules::vscode::extension::install tintinweb.vscode-inline-bookmarks
  p6df::modules::vscode::extension::install tintinweb.vscode-LLL
  p6df::modules::vscode::extension::install tintinweb.vscode-vyper

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
