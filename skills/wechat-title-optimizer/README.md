# 公众号标题优选 · WeChat Title Optimizer

给一篇中文公众号文章，得到8个不同角度的标题，并选出主标题、稳妥版和传播版。

核心：**标题吸引人，正文接得住，语气像作者。**

适用于科技、AI、通信行业、门店经营、实用教程和一般公众号内容。它是一套 Agent Skill 指令，标题由宿主AI生成；本仓库不含独立模型服务、采集器或发布程序。

## 能做什么

- 根据正文、摘要或大纲生成标题。
- 优化已有标题，保留有效信息。
- 按8个维度评分，明确推荐一个主选。
- 筛掉虚构数字、亲测、排名、收益和时效。
- 按作者文风调整力度，提供稳妥版和传播版。
- 按需给A/B建议，每次只改一个变量。

不会因为名字中有“优选”就保证打开率或10万+。评分是编辑判断，需要真实表现数据才能评估效果。

## 安装

使用 [Skills CLI](https://github.com/vercel-labs/skills)：

```bash
npx skills add isllyy/tongxin-yijie-wechat-production --skill wechat-title-optimizer
```

安装到 Codex 全局：

```bash
npx skills add isllyy/tongxin-yijie-wechat-production --skill wechat-title-optimizer -g -a codex
```

手动安装到 Codex 全局：

```bash
git clone https://github.com/isllyy/tongxin-yijie-wechat-production.git
cd tongxin-yijie-wechat-production
bash scripts/install-mac.sh --codex-only
```

安装脚本同时安装总控和标题优选，已有目标保留备份。安装后在下一轮对话调用；若宿主列表未刷新，重新打开会话或重启宿主。

标准入口为根目录 [SKILL.md](SKILL.md)，兼容支持该格式的Agent；界面元数据放在 [agents/openai.yaml](agents/openai.yaml)。

## 调用

```text
用 $wechat-title-optimizer 给下面这篇文章起标题，
生成8个不同角度，评分后推荐主标题、稳妥版和传播版。
目标读者是门店老板，语气自然、客观。
[粘贴正文]
```

```text
用 $wechat-title-optimizer 优化这个原标题。
只给4个候选，不要新增正文没有的事实。
原标题：[标题]
正文：[正文]
```

```text
用 $wechat-title-optimizer 比较这几个标题，只选一个并解释原因。
[标题与正文]
```

明确指定数量、输出格式或语气时，以你的要求为准。只有选题也能使用，但不会把尚未执行的计划写成结果。

## 示例与验证

[合成门店示例](examples/store-video.md) 包含完整输入、8个候选、分项评分和失实标题拦截。

v1.0.0完成入口格式、引用路径、评分上限与求和的检查，并进行了人工示例审阅。示例不是独立模型测评或真实公众号效果测试。

## 结构

```text
wechat-title-optimizer/
├── SKILL.md
├── agents/openai.yaml
├── references/title-methods.md
├── references/sources.md
├── examples/store-video.md
├── README.md
└── LICENSE
```

## 来源与许可

方法组织参考 SpaceZephyr 的 `baokuan-title-generator` 和 gainubi 的 `wechat-title-generator`，公开版以自编说明组织成一个独立技能。版本链接与取舍见 [来源说明](references/sources.md)。

本仓库自编内容采用 [MIT](LICENSE)，外部参考项目的内容不受本仓库许可证覆盖。

维护者：伊水 · 通信伊姐 / [isllyy](https://github.com/isllyy)。
