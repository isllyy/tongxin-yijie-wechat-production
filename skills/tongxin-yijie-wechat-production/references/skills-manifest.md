# 技能与依赖

## 包内提供

| Skill | 作用 |
|---|---|
| tongxin-yijie-wechat-production | 选题至草稿投递的总控 |
| wechat-title-optimizer | 8个标题、事实检查、评分和三种推荐 |

根目录安装脚本同时安装两项；总控还可直接读取相邻标题入口。IP档案、全身、三视图与八张表情图在本包内，不依赖旧机器文件路径。

## 执行工具

| 能力 | 推荐工具及来源 | 何时需要 |
|---|---|---|
| 角色配图 | [gimi-illustration](https://github.com/GiMi-Xiaomi/gimi-illustration-skill)＋宿主生图工具 | 生成通信伊姐角色图 |
| 普通排版 | [baoyu-markdown-to-html](https://github.com/JimLiu/baoyu-skills) | Markdown转微信HTML |
| 草稿投递 | [baoyu-post-to-wechat](https://github.com/JimLiu/baoyu-skills) | 写入公众号草稿箱 |
| 精排 | [gzh-design](https://github.com/isjiamu/gzh-design-skill) | 用户要求精排或主题组件时 |
| 素材查证 | 宿主搜索、网页和文档工具 | 核验当前事实与链接内容 |
| 自然改稿 | 已安装的human-writing或humanizer-zh | 需要改稿时可选 |
| 热点与复盘 | 已安装的aihot或公众号数据 | 用户需要热点或历史数据时可选 |

这些工具由各自项目提供，本仓库不复制其代码和许可证。缺少可选工具时使用宿主已有等效能力；缺少投递或图像能力时不得宣称完成对应阶段。

## 安装执行工具示例

```bash
npx skills add JimLiu/baoyu-skills --skill baoyu-markdown-to-html --skill baoyu-post-to-wechat -g -a codex
npx skills add GiMi-Xiaomi/gimi-illustration-skill -g -a codex
npx skills add isjiamu/gzh-design-skill -g -a codex
```

安装后按各工具要求配置运行时。草稿API需要本机AppID、AppSecret和微信白名单；浏览器方式需要有效登录。这些环境与权限不在仓库中提供。

第三方代码与主题保持外部调用，尤其不将AGPL主题组件并入本仓库MIT范围。不同机器的风格校准图与发布凭据独立配置。

