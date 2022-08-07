######################################################################
#<
#
# Function: p6df::modules::solidity::deps()
#
#  Depends:	 p6_github
#>
######################################################################
p6df::modules::solidity::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6common
    ethereum/solidity
  )
}

######################################################################
#<
#
# Function: p6df::modules::solidity::langs()
#
#  Depends:	 p6_js
#>
######################################################################
p6df::modules::solidity::langs() {

  p6_js_npm_global_install "solc"
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
  brew install solidity
}

######################################################################
#<
#
# Function: p6df::modules::solidity::vscodes()
#
#>
######################################################################
p6df::modules::solidity::vscodes() {

  code --install-extension Aniket-Engg.sol-profiler-vscode
  code --install-extension JuanBlanco.solidity
  code --install-extension MythX.mythxvsc
  code --install-extension tintinweb.solidity-visual-auditor
  code --install-extension tintinweb.vscode-solidity-flattener
  code --install-extension tintinweb.vscode-solidity-language
  code --install-extensiontintinweb.ethereum-security-bundle
  code --install-extensiontintinweb.graphviz-interactive-preview
  code --install-extensiontintinweb.solidity-metrics
  code --install-extensiontintinweb.vscode-ethover
  code --install-extensiontintinweb.vscode-inline-bookmarks
  code --install-extensiontintinweb.vscode-LLL
  code --install-extensiontintinweb.vscode-vyper
}
