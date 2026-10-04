# 通信伊姐公众号全流程 · 标题优选整合包

**选题 → 正文 → 标题优选 → IP配图 → 微信排版 → 草稿投递 → 复盘**

给Codex或其他支持Agent Skills的助手使用。默认作者伊水、品牌通信伊姐，面向想把AI用进实际工作的一般读者。

包含两项可独立调用的Skill：

| Skill | 用途 |
|---|---|
| [tongxin-yijie-wechat-production](skills/tongxin-yijie-wechat-production/SKILL.md) | 公众号生产总控，按阶段确认与结果核验 |
| [wechat-title-optimizer](skills/wechat-title-optimizer/SKILL.md) | 默认8个不同角度，评分后选主标题、稳妥版和传播版 |

![通信伊姐IP参考](skills/tongxin-yijie-wechat-production/references/ip-profiles/tongxin-yijie/front-full-body.png)

## 安装

用 [Skills CLI](https://github.com/vercel-labs/skills) 同时安装两项到Codex全局：

```bash
npx skills add isllyy/tongxin-yijie-wechat-production --skill tongxin-yijie-wechat-production --skill wechat-title-optimizer -g -a codex
```

或克隆后安装：

```bash
git clone https://github.com/isllyy/tongxin-yijie-wechat-production.git
cd tongxin-yijie-wechat-production
bash scripts/install-mac.sh --codex-only
```

脚本默认安装到Codex和Claude的用户技能目录；已有同名目标会保留备份。再次运行同一版本会识别已有链接。也支持 `--claude-only`、`--with-agents`，以及 `--skills-dir <目录>` 指定目标技能目录。

安装后下一轮对话调用；列表未刷新时新开会话或重启宿主。安装脚本提供本包的两个Skill，执行配图、排版和微信投递还需 [依赖清单](skills/tongxin-yijie-wechat-production/references/skills-manifest.md) 中的工具与本机配置。

## 调用

```text
用 $tongxin-yijie-wechat-production 做一篇通信伊姐公众号文章，
主题是“门店怎么用AI减少内容制作负担”。
先给我选题角度和正文，保持自然、客观、实用。
```

```text
按通信伊姐流程给已确认正文起标题，
再做IP配图和精排，给我看预览。
```

```text
把这份已确认的文章、标题、配图和HTML保存到公众号草稿箱，
核对标题、作者、封面和内图，返回实际保存结果。
```

也能单独调用标题优选：

```text
用 $wechat-title-optimizer 为下面正文生成8个不同角度的标题，
评分并推荐主标题、稳妥版和传播版。
[正文]
```

## 如何推进

五个制作确认点为选题、正文、标题、配图和排版。确认针对具体版本，修改上游内容时重查下游产物；已有授权不重复询问。

标题按已确认正文生成，不把标题推荐当成人工选定。配图有实际文件与风格检查，精排使用 `gzh-design` 组装主题、校验HTML，最终HTML作为投递源。

默认停在草稿箱。写作、配图、排版与正式发布各是独立状态；保存草稿以平台标识及内容核验为依据。正式发布需用户明确要求，并以平台发布状态或文章链接确认。

## 本包内容

- 全流程总控、账号开头结尾、来源整理、投递与复盘约定。
- 标题优选：多角度、事实门槛、百分制、作者文风及用途推荐。
- 通信伊姐IP档案、全身、三视图及8张表情参考。
- 同时安装两个Skill的脚本。
- [合成标题示例](skills/wechat-title-optimizer/examples/store-video.md)。

这是给Agent执行的工作流技能包。宿主模型、生图工具、第三方排版发布代码、AppID/AppSecret与浏览器登录分别配置。缺少某项能力时可完成已有能力覆盖的阶段，并明确尚未完成的部分。

## 验证

发布前检查两项Skill入口、包内引用、标题示例分数与安装脚本的重复安装/备份行为。未通过本次仓库发布任务重新投递真实公众号草稿，也未做真实点击率测评。

## 来源与许可

标题方法参考 [SpaceZephyr/creator-buddy](https://github.com/SpaceZephyr/creator-buddy) 和 [gainubi/wechat-skills](https://github.com/gainubi/wechat-skills)，本版使用重新撰写的说明，取舍与固定版本链接见 [标题来源](skills/wechat-title-optimizer/references/sources.md)。

本仓库自编文档与脚本使用 [MIT](LICENSE)。外部依赖仍按各自许可证提供；通信伊姐品牌与IP用于此工作流身份参考，使用本工具不表示代表该账号。

维护者：[isllyy](https://github.com/isllyy) · 伊水 / 通信伊姐。

