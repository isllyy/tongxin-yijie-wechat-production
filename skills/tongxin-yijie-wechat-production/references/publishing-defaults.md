# Publishing Defaults

## Preferred path

Use `baoyu-post-to-wechat` API publishing as the primary stable path.

Prefer:

- source for publish: final preview HTML when visual fidelity matters
- destination: WeChat draft box
- stop after draft save unless user explicitly asks to publish

## Required inputs

- final article file
- title
- summary
- author
- cover image
- inline images if present

## Required environment

- `WECHAT_APP_ID`
- `WECHAT_APP_SECRET`
- current public IP in WeChat API whitelist

## Material expectations

- cover uploaded and bound via `thumb_media_id`
- inline images uploaded and replaced with WeChat-hosted image URLs
- article remains complete without relying on QR code, keyword reply, or off-platform next step

## Compliance preflight

Before draft save, confirm:

1. no `欢迎关注我` style ending remains
2. no contact guidance appears in title, summary, body, footer, or comments plan
3. no QR code or external link is used as the main action prompt
4. no product-page / activity-page / registration-page action chain is used to complete the reading experience
5. the article can stand on its own inside the current WeChat page

## Verification checklist

After publish, verify:

1. draft API returns success
2. returned `media_id` exists
3. returned draft contains expected title
4. returned draft contains expected `thumb_media_id`
5. returned draft body contains the expected number of inline images
6. article remains in draft box for review
