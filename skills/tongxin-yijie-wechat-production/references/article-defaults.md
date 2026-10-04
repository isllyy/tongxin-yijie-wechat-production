# Article Defaults

## Fixed account defaults

- author: `伊水`
- account brand text: `通信伊姐`
- logo / corner mark / badge wording: `通信伊姐`
- audience: ordinary readers who want to use AI in real work

## Mobile typesetting defaults

When `通信伊姐` uses `gzh-design`, apply a mobile-friendly large-type pass after the selected theme has been assembled.

Required sizes:

- chapter heading: `20px`
- body copy and list copy: `16px`
- secondary heading / strong subheading: `18px`
- supporting text: `15px`
- caption / note text: `14px`
- small label: `13px`
- micro label: `12px`
- tiny decorative label: `11px`
- minimum decorative text: `10px`

Default conversion from a theme's original sizes:

```text
17px → 20px
16px → 19px
15px → 18px
14px → 16px
13px → 15px
12px → 14px
11px → 13px
10px → 12px
9px  → 11px
8px  → 10px
```

Do not scale:

- cover display titles that are already `24px` or larger
- large decorative chapter numbers
- image dimensions, spacing, borders, or line thickness

After resizing, regenerate the preview and rerun `validate_gzh_html.py`. Treat `16px` body copy and `20px` chapter headings as the default unless the user explicitly requests another size.

## Preferred opening

Use a short opening that does three things:

1. names the change
2. explains why it matters
3. avoids long background

Recommended pattern for tool / workflow articles:

```text
很多人现在用 AI，还停留在“会聊天”“会写东西”“能帮忙查资料”这个阶段。
但这次<事件/工具/变化>，让我更强烈地感觉到一件事：
AI 不只是更会回答问题了，它开始更像一个真正能接活的助手。
```

## Preferred ending

先用与文章主题相关的问题引导评论区讨论，然后统一追加以下固定尾注：

```text
谢谢你读我的文章。老号新开，感谢你的关注。

如果觉得不错，随手点个赞、在看、转发三连吧🙂

如果想第一时间收到推送，也可以给我个星标⭐～谢谢你看我的文章。
```

固定尾注只使用公众号站内互动，不追加私人联系方式、二维码、关键词回复、外部链接或 follow-poster。

When possible, tie the ending back to the article's core argument and invite readers to continue the discussion in the comments.

Recommended comment-first patterns:

```text
这件事你怎么看？
也欢迎把你的观察留在评论区，我们一起聊聊。
```

```text
如果你最近也在遇到类似问题，
欢迎在评论区说说你的情况，我后面继续拆。
```

```text
你更认同哪一种判断？
留言区聊聊，也许我下一篇就接着写这个问题。
```

Use endings that match the article type:

- trend / judgment article: ask for the reader's view or判断
- practical tutorial: ask what step the reader got stuck on
- product observation: ask whether the reader has used it and how it felt
- industry analysis: ask which signal the reader thinks matters most

## Title defaults

Preferred title style:

- practical
- readable
- mildly curiosity-driven
- not low-quality clickbait

Avoid:

- shock-only wording
- exaggerated "everyone must know" claims
- misleading mismatch with body content
