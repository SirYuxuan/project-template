#!/bin/bash

RED='\033[1;31m'
export NC='\033[0m' # 无颜色
export BOLD='\033[1m'
export UPURPLE='\033[4;35m'
export BBLUE='\033[1;34m'
export UGREEN='\033[4;92m'
export GREEN='\033[1;32m'
export CYAN='\e[36m'
export DGRAY='\e[90m'

# 将文本居中显示在终端中。
center() {
  term_width="$(tput cols)"
  padding="$(printf '%0.1s' ={1..500})"
  echo -e "\n${BBLUE}$(printf '%*.*s %s %*.*s\n' 0 "$(((term_width - 2 - ${#1}) / 2))" "$padding" "$1" 0 "$(((term_width - 1 - ${#1}) / 2))" "$padding")${NC}\n"
}

# 用于在项目测试失败时显示错误文本
displayTestErrorTexts() {
  echo -e "${RED}X 错误：测试失败！${NC}。请确保您以其原始脚手架（文件夹/文件）结构运行此脚本，没有任何修改。${NC}"
  echo -e "您应尝试使用 'git stash' 暂存您的更改，并从项目根目录再次执行此脚本，或者不带任何更改再次克隆存储库（模板）。"
  echo -e "请记住，您应该从这里创建全新的存储库：${BOLD}${UPURPLE}https://github.com/SirYuxuan/project-template/generate${NC}"
  echo -e "\n程序现在将退出，以便您检查此脚本在从上述链接创建新存储库时是否正确执行。"
  echo -e "要忽略此错误并继续，请使用标志'${GREEN}--omit-test-check${NC}'再次执行此脚本。"
  echo -e "要了解有关脚本的更多信息，请使用'${BBLUE}--help${NC}'标志。"
}


# 显示帮助文本的函数，通常由'--help'标志调用。
# （它将手动检测您的 git 数据并提示输入项目类型）

displayHelpTexts() {
  center "用户帮助 ${DGRAY}$SCRIPT_VERSION${BBLUE}"
  echo -e "脚本用法: ${UGREEN}bash $0${NC} 或 ${UGREEN}./$0${NC}\n"

  echo -e "${BOLD}可选参数和标志:${NC}"
  echo -e "  ${CYAN}-u, --username, --name${NC}\t\t手动指定 GitHub 用户名，而不是自动检测的用户名。"
  echo -e "  ${CYAN}-e, --email, --mail${NC}\t\t\t手动指定 GitHub 电子邮件，而不是自动检测的电子邮件。"
  echo -e "  ${CYAN}-t, --projectType, --type${NC}\t\t手动指定项目类型（例如：npm 软件包或网站等），而不是在脚本内部提示。"
  echo -e "  ${CYAN}-h, --help, --info${NC}\t\t\t(${BOLD}${DGRAY}FLAG${NC}) 显示此帮助文本。"
  echo -e "  ${CYAN}-v, --version${NC}\t\t\t\t(${BOLD}${DGRAY}FLAG${NC}) 显示当前脚本版本。"
  echo -e "  ${CYAN}--omit-verification${NC}\t\t\t(${BOLD}${DGRAY}FLAG${NC}) 如果您确定数据无误，则不会提示。"
  echo -e "  ${CYAN}--omit-commit${NC}\t\t\t\t(${BOLD}${DGRAY}FLAG${NC}) 不会提交您的数据。"
  echo -e "  ${CYAN}--omit-tests, --omit-test-check${NC}\t(${BOLD}${DGRAY}FLAG${NC}) 不会执行脚本的测试。"
  echo -e "${BBLUE}\n除了使用标有 ${NC}'${BOLD}${DGRAY}FLAG${NC}'${BBLUE} 的参数外，其他参数都需要在等号后面加上一个值（--argument=value），例如：--email=etc@abc.com，标志则直接调用，不需要等号.${NC}"

  echo -e "\n${BOLD}使用示例:${NC}"
  echo -e "  bash $0"
  echo -e "  bash $0 -h"
  echo -e "  bash $0 --projectType=Angular-Website --omit-commit --omit-verification"
  echo -e "  bash $0 --email=1718018032@qq.com"
  echo -e "  bash $0 --username=SirYuxuan --projectName=simple --email=1718018032@qq.com --projectType=Website${NC}"
  echo -e "  bash $0 -u=SirYuxuan --projectType=Github-template --omit-commit${NC}\n"

  echo -e "用户名、项目名称和电子邮件是从您的 git 仓库和 git 配置中自动收集的。"
  echo -e "确保在执行此脚本之前${BBLUE}阅读了文档${NC}：${UPURPLE}https://github.com/SirYuxuan/project-template${NC}"
  echo -e "如果您有任何问题或发现任何问题，请务必在此处进行报告：${UPURPLE}https://github.com/SirYuxuan/project-template/issues${NC}"
}

# 写入并解析变量以编写新生成的 README.md 文件的函数：
writeREADME() {
  PROJECT_NAME_PARSED=${PROJECT_NAME/-/ }
  bash -c "NEW_USERNAME='NEW_USERNAME' PROJECT_NAME='PROJECT_NAME' PROJECT_TYPE='PROJECT_TYPE'; cat << EOF > README.md

# 🔥 **$NEW_USERNAME/$PROJECT_NAME**

<div align=\"center\">
  <!-- Change your logo -->
  <a href=\"https://github.com/$NEW_USERNAME/$PROJECT_NAME\">
    <img width=\"100%\" src=\"https://i.imgur.com/SVvgxJF.png\" alt=\"@$NEW_USERNAME/$PROJECT_NAME的标识\">
  </a>
  <br>
  <a href=\"https://github.com/$NEW_USERNAME/$PROJECT_NAME/issues\">
    <img src=\"https://img.shields.io/github/issues/$NEW_USERNAME/$PROJECT_NAME?color=0088ff&style=for-the-badge&logo=github\" alt=\"$NEW_USERNAME/$PROJECT_NAME的问题\"/>
  </a>
  <a href=\"https://github.com/$NEW_USERNAME/$PROJECT_NAME/pulls\">
    <img src=\"https://img.shields.io/github/issues-pr/$NEW_USERNAME/$PROJECT_NAME?color=0088ff&style=for-the-badge&logo=github\"  alt=\"$NEW_USERNAME/$PROJECT_NAME的拉取请求\"/>
  </a>
</div>

---

## 🤔 **关于项目**

* <!-- ... [为什么创建此项目？动机、目的、描述、目标等] -->

---

## ⚡ **安装**

* <!-- ... [显示如何安装您的项目] -->

---

## 🚀 **用法**

* <!-- ... [显示如何使用您的项目] -->

---

## 🌲 **项目树**

<!-- ... [在这里显示您的项目树，如果有用的话] -->

---

## 📝 **额外说明**

* <!-- ... [添加附加说明] -->

---

## 📸 **截图**

<!-- ... [一些描述性图片] -->

---

## 🍰 **支持者和捐赠者**

<!-- 更改您的小徽标 -->
<a href=\"https://github.com/$NEW_USERNAME/$PROJECT_NAME_PARSED\">
  <img alt=\"@$NEW_USERNAME/$PROJECT_NAME_PARSED的品牌标志，无文字\" align=\"right\" src=\"https://i.imgur.com/3qK1sie.png\" width=\"18%\" />
</a>


我们目前正在寻找新的捐赠者来帮助维护此项目！❤️

通过捐赠，您将帮助此项目的发展，并且*您将在此$PROJECT_NAME的README.md中显示*，以便每个人都可以看到您的善举并访问您的内容⭐。

<a href=\"https://github.com/sponsors/$NEW_USERNAME\"> <!-- 如果您不在GitHub赞助计划中，修改此链接到您的主要捐赠网站 -->
  <img src=\"https://img.shields.io/badge/赞助者-$NEW_USERNAME/$PROJECT_NAME_PARSED-blue?logo=github-sponsors&style=for-the-badge&color=red\">
</a>

<!-- 在此处链接到您的捐赠页面 -->

---

$PROJECT_NAME是从*[SirYuxuan/project-template](https://github.com/SirYuxuan/project-template)* 📚生成的

---

## 🕵️ 额外建议

* <!-- 如果您建议安装任何特殊内容，或者如果您建议使用某种内容以便更好地使用您的项目...-->

---

## 🎉 $PROJECT_TYPE有帮助吗？帮助我们提高这些数字

[![GitHub followers](https://img.shields.io/github/followers/$NEW_USERNAME.svg?style=social)](https://github.com/$NEW_USERNAME)
[![GitHub stars](https://img.shields.io/github/stars/$NEW_USERNAME/$PROJECT_NAME.svg?style=social)](https://github.com/$NEW_USERNAME/$PROJECT_NAME/stargazers)
[![GitHub watchers](https://img.shields.io/github/watchers/$NEW_USERNAME/$PROJECT_NAME.svg?style=social)](https://github.com/$NEW_USERNAME/$PROJECT_NAME/watchers)
[![GitHub forks](https://img.shields.io/github/forks/$NEW_USERNAME/$PROJECT_NAME.svg?style=social)](https://github.com/$NEW_USERNAME/$PROJECT_NAME/network/members)
<!-- 如果您不在GitHub赞助计划中，修改此链接到您的主要捐赠网站 -->
[![赞助](https://img.shields.io/static/v1?label=赞助&message=%E2%9D%A4&logo=github-sponsors&color=red&style=social)](https://github.com/sponsors/$NEW_USERNAME)

尽情享受！ 😃

---

## ⚖️📝 **许可和更改记录**

请查看 '**[LICENSE](LICENSE)**' 文件中的许可证。

请查看 '**[CHANGELOG.md](CHANGELOG.md)**' 文件中的更改。

---

_由**[@$NEW_USERNAME](https://github.com/$NEW_USERNAME)**充满了很多❤️❤️制作_
EOF"
}

# 写入并解析变量以编写新生成的 CHANGELOG.md 文件的函数：
writeCHANGELOG() {
  ACTUAL_DATE=$(date '+%Y-%m-%d')
  bash -c "PROJECT_NAME='PROJECT_NAME' PROJECT_TYPE='PROJECT_TYPE' ACTUAL_DATE='ACTUAL_DATE'; cat << EOF > CHANGELOG.md
<!-- markdownlint-disable MD024-->
# **变更日志** 📜📝

将记录对\"**$PROJECT_NAME**\" $PROJECT_TYPE 的所有重要更改。

此格式基于[Keep a Changelog](https://keepachangelog.com/en/1.0.0/)，并且此项目遵循[语义化版本](https://semver.org/spec/v2.0.0.html)。

---

## [**0.0.1**] - $ACTUAL_DATE

### 已添加

* 来自 **[SirYuxuan/project-template](https://github.com/SirYuxuan/project-template)** 的基本项目结构。
EOF"
}
