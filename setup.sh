#!/bin/bash

color_red () {
  local ESC=$(printf '\033')
  printf "$ESC[31m$1$ESC[m\n"
}

color_green () {
  local ESC=$(printf '\033')
  printf "$ESC[32m$1$ESC[m\n"
}

# プロジェクトのルートディレクトリからスクリプトが実行されることを想定
# 'hooks' フォルダが存在するか確認
if [ -d "./hooks" ]; then
    # '.git/hooks' ディレクトリが存在するか確認し、存在しなければ作成
    if [ ! -d "./.git/hooks" ]; then
        mkdir -p ./.git/hooks || {
            echo $(color_red "⛔️ Error: Failed to create .git/hooks directory.")
            exit 1
        }

        # 'hooks' フォルダの内容を '.git/hooks' にコピー
        cp -r ./hooks/* ./.git/hooks/ || {
            echo $(color_red "⛔️ Error: Failed to copy hooks.")
            exit 1
        }

        # コピーしたスクリプトに実行権限を与える
        chmod -R +x ./.git/hooks/ || {
            echo $(color_red "⛔️ Error: Failed to set executable permissions.")
            exit 1
        }

        echo $(color_green "🟢 Success: Hooks have been successfully copied to .git/hooks.")
    else
        echo $(color_green "🔄 Notice: Hooks already exist in .git/hooks. No need to run this command again.")
    fi
else
    echo $(color_red "⛔️ Error: 'hooks' directory does not exist.")
fi
