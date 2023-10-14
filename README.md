# 🔥 **SirYuxuan GitHub Project Template**

<p align="center">
  <br>
  <a href="https://github.com/SirYuxuan/project-template/issues">
    <img src="https://img.shields.io/github/issues/SirYuxuan/project-template?color=0088ff&style=for-the-badge&logo=github" alt="@SirYuxuan/project-template's issues"/>
  </a>
  <a href="https://github.com/SirYuxuan/project-template/pulls">
    <img src="https://img.shields.io/github/issues-pr/SirYuxuan/project-template?color=0088ff&style=for-the-badge&logo=github" alt="@SirYuxuan/project-template's pull requests"/>
  </a>
  <a href="https://github.com/SirYuxuan/project-template/generate">
    <img src="https://img.shields.io/badge/use%20this-template-blue?logo=github-sponsors&style=for-the-badge&color=green" alt="@SirYuxuan/project-template link to create a new repository from the template">
  </a>

</p>

---

## 🤔 **这个模板是关于什么的？**

* 这个模板可以作为您未来任何仓库或项目的基础层。
* 通过8个问题模板使您的项目易于维护。
* 使用个性化的README徽章和非凡的README结构快速启动您的文档。
* 使用专为您创建的20个问题标签来管理您的问题！
* 通过诸如行为准则、贡献、支持和安全等所有指南，使您的社区更加健康。
* 通过以下方式了解更多信息： [官方GitHub指南中关于如何从模板创建存储库的部分](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template).
* 开始使用它; "**[点击使用此模板](https://github.com/SirYuxuan/project-template/generate)**"并创建您的新存储库，
* 所有基本设置都是通过一个简单的脚本完成的，它将自动检测所有您的数据，使整个过程速度快如闪电！克隆您的新存储库并执行以下脚本：`SETUP_TEMPLATE.sh` 脚本以个性化方式处理文件，并使用您的私人详细信息。查看以下链接了解如何运行它 [这里](https://asciinema.org/a/425259).
* 所有的 Markdown 遵循 "MarkdownLint" 规则。 ["MarkdownLint" 规则](https://github.com/DavidAnson/markdownlint).

---

## ⚡ **安装**

1. 要从此模板创建一个新的存储库， **[从此模板生成您的新存储库](https://github.com/SirYuxuan/project-template/generate)**;
   如需更多信息或指导，请查阅[GitHub 指南](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template).
2. 安装 [🤖 使用的 GitHub 机器人](https://github.com/SirYuxuan/project-template#-used-github-bots) (推荐)
3. 克隆您的新存储库 **[从此模板生成](https://github.com/SirYuxuan/project-template/generate)** 并切换到该目录。
4. **执行** 这个 `SETUP_TEMPLATE.sh` Shell 脚本  使用你的数据来**自定义**文件。

    ```bash
    bash SETUP_TEMPLATE.sh
    ```

    Or

    ```bash
    ./SETUP_TEMPLATE.sh
    ```

   此外，观看[这个视频](https://asciinema.org/a/425259)* 以查看 **如何执行脚本** 或者使用 *`bash SETUP_TEMPLATE.sh --help`* 获得更多额外信息。

   如果自动检测的用户名、项目名称或电子邮件不正确，请发布一个问题，然后可以 **手动更正** 使用可选参数进行手动更正: *`bash SETUP_TEMPLATE.sh --username=whatever --projectName=whatever --email=whatever --projectType=whatever`*

5. **查看** 检查每一个文件并**自定义** 按照您的喜好进行自定义。.
6. 构建您的项目。. 🚀

⚠️ _自定义每个文件以满足您的要求。_ ⚠️

---

## 📚 **它包括什么内容？**

1. A **`SETUP_TEMPLATE.sh`** 脚本 **必须在克隆存储库时执行**.
   脚本将会自动将所有文件中的数据根据您的信息进行定制。

   1. 一个 README 模板文件，带有默认模板，可用于开始记录您的项目。（其中包括个性化徽章和包含项目详细信息的文本）
   2. 基于项目变更记录的 CHANGELOG 模板文件[Keep a Changelog](https://keepachangelog.com/en/1.0.0/).
   3. An [issue_label_bot.yaml](/.github/issue_label_bot.yaml) file to use the issue adder GitHub bot. [Activate it or check its documentation](https://github.com/marketplace/issue-label-bot).
   4. A [config.yml](/.github/config.yml) file to modify multiple bot's behaviours.
   5. A [settings.yml](/.github/settings.yml) file to use the popular settings GitHub bot. [Activate it or check its documentation](https://probot.github.io/apps/settings/).
   6. A [CONTRIBUTING](/.github/CONTRIBUTING.md) explaining how to contribute to the project. [Learn more with the GitHub guide](https://docs.github.com/en/github/building-a-strong-community/setting-guidelines-for-repository-contributors).
   7. A [SUPPORT](/.github/SUPPORT.md) explaining how to support the project. [Learn more with the GitHub guide](https://docs.github.com/en/github/building-a-strong-community/adding-support-resources-to-your-project).
   8. A [SECURITY](/.github/SECURITY.md) with a guide on how to post a security issue. [Learn more with the GitHub guide](https://docs.github.com/en/code-security/getting-started/adding-a-security-policy-to-your-repository).
   9. A [CODEOWNERS](/.github/CODEOWNERS) with the new user as the principal owner. [Learn more with the GitHub guide](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/about-code-owners).
   10. A [CODE_OF_CONDUCT](/.github/CODE_OF_CONDUCT.md) with a basic code of conduct. [Learn more with the GitHub guide](https://docs.github.com/en/github/building-a-strong-community/adding-a-code-of-conduct-to-your-project).
   11. A [PULL_REQUEST_TEMPLATE](/.github/pull_request_template.md) with a template for your pull request that closes issues with keywords. [Learn more with the GitHub guide](https://docs.github.com/en/communities/using-templates-to-encourage-useful-issues-and-pull-requests/creating-a-pull-request-template-for-your-repository).
   12. Multiple [issues templates](/.github/ISSUE_TEMPLATE). [Learn more with the GitHub guide](https://docs.github.com/en/github/building-a-strong-community/configuring-issue-templates-for-your-repository).
         1. A [config.yml](/.github/ISSUE_TEMPLATE/config.yml) with the config and information about the issue templates.
         2. A [Blank issue template](/.github/ISSUE_TEMPLATE) with the super basic stuff, all the issues should contain.
         3. A [Bug issue template](/.github/ISSUE_TEMPLATE/1-bug-report.md).
         4. A [Failing test issue template](/.github/ISSUE_TEMPLATE/2-failing-test.md).
         5. A [Documentation issue template](/.github/ISSUE_TEMPLATE/3-docs-bug.md).
         6. A [Feature request issue template](/.github/ISSUE_TEMPLATE/4-feature-request.md).
         7. An [Enhancement request issue template](/.github/ISSUE_TEMPLATE/5-enhancement-request.md).
         8. A [Security report issue template](/.github/ISSUE_TEMPLATE/6-security-report.md).
         9. A [Question or support issue template](/.github/ISSUE_TEMPLATE/7-question-support.md).

---

### 🌲 **Project tree**

Files that will get removed after the execution of `SETUP_TEMPLATE.sh` are not shown! 🙈

```text
.
├── CHANGELOG.md
├── .github
│   ├── CODE_OF_CONDUCT.md
│   ├── CODEOWNERS
│   ├── config.yml
│   ├── CONTRIBUTING.md
│   ├── FUNDING.yml
│   ├── issue_label_bot.yaml
│   ├── ISSUE_TEMPLATE
│   │   ├── 1-bug-report.md
│   │   ├── 2-failing-test.md
│   │   ├── 3-docs-bug.md
│   │   ├── 4-feature-request.md
│   │   ├── 5-enhancement-request.md
│   │   ├── 6-security-report.md
│   │   ├── 7-question-support.md
│   │   └── config.yml
│   ├── ISSUE_TEMPLATE.md
│   ├── pull_request_template.md
│   ├── SECURITY.md
│   ├── settings.yml
│   └── SUPPORT.md
├── .gitignore
└── README.md

2 directories, 22 files
```

---

## 📝 **Additional notes**

* After **[generating your new repo with this template](https://github.com/SirYuxuan/project-template/generate)**, make sure to, right after you clone it, run the script `SETUP_TEMPLATE.sh`.

* Then, after 'cloning' the repository you will be presented with all the files modified with your project details and information. It is essential to **manually review every file** to check if it fits your requirements and performs any necessary changes to customize the project as you want.

* If you are using **Windows** and you don't know how to execute the `SETUP_TEMPLATE.sh` script:
  1. Install **[git for Windows](https://git-scm.com/download/win)**.
  2. Right-click on the git repository folder and click "*git bash here*".
  3. Then just perform *`bash SETUP_TEMPLATE.sh`* **or** *`chmod u+x SETUP_TEMPLATE.sh && ./SETUP_TEMPLATE.sh`*.

### 🤖 **Used GitHub bots**

These are recommended bots that are prepared and configured for this template. If you install them, your coding experience will probably be much better.
We sincerely recommend at least installing the [issue label bot](https://github.com/marketplace/issue-label-bot) as this bot is the one that adds all the labels used in the issue templates.

1. The `issue_label_bot.yaml` file depends on the **[issue label bot](https://github.com/marketplace/issue-label-bot)** (✓ highly recommended).
2. The `settings.yml` file depends on the **[settings label bot](https://probot.github.io/apps/settings/)** (optional).
3. The `config.yml` file depends on the bot **[welcome bot](https://probot.github.io/apps/welcome/)** and **[to-do bot](https://probot.github.io/apps/todo/)** (optional).

---

## 📸 **Screenshots**

A couple of screenshots to delight you before you use this template.

### 🔺 All the issue templates

<p align="center">
  <img width="70%" height="70%" src="https://i.imgur.com/SDJixBz.png" alt="All the issue templates.">
</p>

### 🔻 An issue template opened

<p align="center">
  <img width="70%" height="70%" src="https://i.imgur.com/r5AiLWu.png" alt="Bug issue template opened.">
</p>

### 📘 The README template

Badges and texts will be replaced with your project details!

<p align="center">
  <img width="70%" height="70%" src="https://i.imgur.com/dKKh53K.png" alt="README.md template.">

  Or watch [this video](https://gifs.com/gif/SirYuxuan-s-readme-md-MwO5E3) to see the whole README template.
</p>

### 🔖 问题的标签

If the bot [probot-settings](https://probot.github.io/apps/settings/) is not installed you will not have these beautiful labels! (there are more issue labels than in the image!)

<p align="center">
  <img width="70%" height="70%" src="https://i.imgur.com/dS91k6R.png" alt="LABELS">
</p>

### 📝 CHANGELOG 模板

(项目名称和项目类型将替换为您的名称和类型）


---

## 🕵️ **额外建议**

为了正确维护 CHANGELOG.md，我们建议采用以下方法 [VSCode 插件](https://github.com/Josee9988/Changelog-and-Markdown-snippets)
和阅读理解 [保存更新日志指南](https://keepachangelog.com/en/1.0.0/).
我们还建议安装所有 [使用的机器人](https://github.com/SirYuxuan/project-template#-used-github-bots).

## 💉 **项目测试**

如果你想改进这个项目的开发，就必须在更改或改进任何东西之后，运行项目的测试，以证明它们是有效的。

执行:

```bash
bash tests/TESTS_RUNNER.sh
```

---

## 🍰 **支持者和捐赠者**



我们目前正在寻找新的捐赠者来帮助和维护这个项目！ ❤️

通过捐赠，您将帮助本项目的发展，而且*您将在本项目的 README.md* 中出现，让每个人都能看到您的善意并访问您的内容⭐。

<a href="https://afdian.net/a/siryuxuan/plan">
  <img alt="project logo" src="https://img.shields.io/badge/Sponsor-SirYuxuan/projecttemplate-blue?logo=github-sponsors&style=for-the-badge&color=red">
</a>

---

## 🎉 该模板是否有用？请帮助我们提高这些数字

[![GitHub's followers](https://img.shields.io/github/followers/SirYuxuan.svg?style=social)](https://github.com/SirYuxuan)
[![GitHub stars](https://img.shields.io/github/stars/SirYuxuan/project-template.svg?style=social)](https://github.com/SirYuxuan/project-template/stargazers)
[![GitHub watchers](https://img.shields.io/github/watchers/SirYuxuan/project-template.svg?style=social)](https://github.com/SirYuxuan/project-template/watchers)
[![GitHub forks](https://img.shields.io/github/forks/SirYuxuan/project-template.svg?style=social)](https://github.com/SirYuxuan/project-template/network/members)

尽情享用! 😃

> ⚠️ 请记住，本模板应根据您的要求进行审核和修改。
> 这个脚本 **SETUP_TEMPLATE.sh** 应在从 [这里](https://github.com/SirYuxuan/project-template/generate) 克隆.
> 这里的文件需要*手动修改* ⚠️

_使用大量 ❤️❤️ by **[@SirYuxuan](https://github.com/SirYuxuan)**_
