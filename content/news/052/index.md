+++
title = "This Month in Rust GameDev #52 - June 2024"
transparent = true
date = 2024-07-03
draft = true
+++

<!-- no toc -->

<!-- Check the post with markdownlint-->

Welcome to the 52th issue of the Rust GameDev Workgroup's
monthly newsletter.
[Rust] is a systems language pursuing the trifecta:
safety, concurrency, and speed.
These goals are well-aligned with game development.
We hope to build an inviting ecosystem for anyone wishing
to use Rust in their development process!
Want to get involved? [Join the Rust GameDev working group!][join]

You can follow the newsletter creation process
by watching [the coordination issues][coordination].
Want something mentioned in the next newsletter?
[Send us a pull request][pr].
Feel free to send PRs about your own projects!

[Rust]: https://rust-lang.org
[join]: https://github.com/rust-gamedev/wg#join-the-fun
[pr]: https://github.com/rust-gamedev/rust-gamedev.github.io
[coordination]: https://github.com/rust-gamedev/rust-gamedev.github.io/issues?q=label%3Acoordination

- [Announcements](#announcements)
- [Game Updates](#game-updates)
  - [Untitled Pixel Wizards Game](#untitled-pixel-wizards-game)
- [Engine Updates](#engine-updates)
- [Learning Material Updates](#learning-material-updates)
- [Tooling Updates](#tooling-updates)
- [Library Updates](#library-updates)
- [Popular Workgroup Issues in GitHub](#popular-workgroup-issues-in-github)
- [Other News](#other-news)
- [Meeting Minutes](#meeting-minutes)
- [Discussions](#discussions)
- [Requests for Contribution](#requests-for-contribution)
- [Jobs](#jobs)
- [Bonus](#bonus)
- [Future news](#future-news)

<!--
Ideal section structure is:

```
### [Title]

![image/GIF description](image link)
_image caption_

A paragraph or two with a summary and [useful links].

_Discussions:
[/r/rust](https://reddit.com/r/rust/todo),
[twitter](https://twitter.com/todo/status/123456)_

[Title]: https://first.link
[useful links]: https://other.link
```

If needed, a section can be split into subsections with a "------" delimiter.
-->

## Announcements

## Game Updates

### [Untitled Pixel Wizards Game][pixel-wizards]

{{ embed_video(type="video/mp4", src="untitled-pixel-wizards-game.mp4",
caption="Enemies now perceive, pursue and attack.. and occasionally get burned to death.") }}

[![A Hound chases a player, and its corpse ragdolls after it is burned to death by a fireball](untitled-pixel-wizards-game.gif)][pixel-wizards]  
_Enemies now perceive, pursue and attack.. and occasionally get burned to death._

[Untitled Pixel Wizards Game][pixel-wizards] is a local-multiplayer [Noita]-like platformer about
killing baddies using spells powered by pixel physics. This month was focused on juicing up said baddies:

- [Pew Pew Pew][pixel-wizards-update-1]: baddies learned to shoot at players.
- [Hot Pursuit][pixel-wizards-update-2]: baddies also learned to chase players! (They're real smart.)
- [Status Update][pixel-wizards-update-3]: physically-simulated pixels learn to burn & poison players & baddies.
- [Ragdolls][pixel-wizards-update-4]: corpses of dead baddies learn to tumble around all realistic-like.
- [Fiddling with Fire][pixel-wizards-update-5]: the fire mechanic figures out how to better burn baddies.

[pixel-wizards]: https://slowrush.dev
[Noita]: https://store.steampowered.com/app/881100/Noita/
[pixel-wizards-update-1]: https://www.slowrush.dev/news/pew-pew/
[pixel-wizards-update-2]: https://www.slowrush.dev/news/hot-pursuit/
[pixel-wizards-update-3]: https://www.slowrush.dev/news/status-update/
[pixel-wizards-update-4]: https://www.slowrush.dev/news/ragdolls/
[pixel-wizards-update-5]: https://www.slowrush.dev/news/fiddling-with-fire/


### [Way of Rhea][wor]

[![Way of Rhea](wor.jpg)][wor]
*Way of Rhea: a puzzle game. Available on Steam.*

[Way of Rhea][wor] is 20% off for the Steam Summer Sale!

Way of Rhea is a color-based puzzle game with difficult puzzles, but
forgiving mechanics developed by [Mason Remaley] in a custom Rust engine. Since its release in May...

- Four alternate secret solutions have been fixed
- Two alternate puzzle solutions have been fixed
- A physics glitch that allowed persistent players to clip through a specific wall was fixed
- Polish was added to some camera motion cues, UI, achievements, tutorials, and dialogue
- A bug that prevented the game from running on Parallels on macOS was fixed
- Support for GeForce NOW was enabled on Steam
- And more...

You can support development by [purchasing Way of Rhea on Steam][wor], or
[signing up for the mailing list][wor-mail] to hear about future games.

[Mason Remaley]: https://masonremaley.com/
[wor]: https://store.steampowered.com/app/1110620/Way_of_Rhea/?utm_campaign=tmirgd&utm_source=n52
[wor-mail]: https://anthropicstudios.com/newsletter/signup/tech


## Engine Updates

### [godot-rust]

![godot-rust logo](godot-rust.png)

godot-rust ([GitHub][gd-github], [Discord][gd-discord], [Mastodon][gd-mastodon], [Twitter][gd-twitter]) by [@Bromeon]
provides Rust bindings for the [Godot engine](https://godotengine.org/).

After quite a bit of development on GitHub, the Godot 4 bindings are now available on [crates.io](https://crates.io/crates/godot) -- 
you can immediately get started using 
`cargo add godot`. Furthermore, the GDExtension API level can now be specified with a Cargo feature, e.g. `api-4-1`.

The `ScriptInstance` API has matured a lot over the past months. This feature allows users to write Godot scripts in Rust, which can be
attached to nodes (just like GDScript). Scripts allow for quickly attaching/detaching functionality in a scene.

The overall API has seen several consistency improvements: reorganized modules, `self`/`&self` receivers on geometric types,
easier element access for `Array`/`Dictionary`/`Packed*Array`. The library has also benefited from Rust's
[`#[diagnostic::on_unimplemented]`][gd-diagnostic] to improve user-facing error messages.

_Discussions:
[/r/rust](https://www.reddit.com/r/rust/comments/1dnmjtl/godotrust_now_on_cratesio_with_the_godot_crate/),
[Mastodon](https://mastodon.gamedev.place/@GodotRust/112673330814149117),
[X](https://x.com/GodotRust/status/1805327592222081482)_

_See also the [devlog article][gd-dev-june]._

[@Bromeon]: https://github.com/Bromeon
[gd-dev-june]: https://godot-rust.github.io/dev/june-2024-update
[gd-diagnostic]: https://blog.rust-lang.org/2024/05/02/Rust-1.78.0.html#diagnostic-attributes
[gd-discord]: https://discord.gg/aKUCJ8rJsc
[gd-github]: https://github.com/godot-rust/gdext
[gd-mastodon]: https://mastodon.gamedev.place/@GodotRust
[gd-twitter]: https://twitter.com/GodotRust
[godot-rust]: https://godot-rust.github.io

## Learning Material Updates

## Tooling Updates

## Library Updates

### [egui_ratatui][egui_ratatui]

![egui_ratatui running in Bevy](egui_ratatui.jpg)
_egui_ratatui running in Bevy_

[egui_ratatui][egui_ratatui] by [gold-silver-copper][gold] is an [egui][egui] widget that is also a [ratatui][ratatui] backend. 
It allows you to create Terminal User Interfaces (TUIs) inside egui.
You can try out the [web demo][erat_web] to see it in action.

The current release is the product of months of iteration, and is now "stable".
It is Wasm compatible and engine agnostic: use it in Bevy, *Quad, eframe, pixels, etc.

`egui_ratatui` is currently being used for the development of a game and 
educational software at a startup with no issues so far.

[egui_ratatui]: https://github.com/gold-silver-copper/egui_ratatui
[gold]: https://github.com/gold-silver-copper
[ratatui]: https://github.com/ratatui-org/ratatui
[egui]: https://github.com/emilk/egui
[erat_web]: https://gold-silver-copper.github.io/

## Popular Workgroup Issues in GitHub

<!-- Up to 10 links to interesting issues -->

## Other News

<!-- One-liners for plan items that haven't got their own sections. -->

## Meeting Minutes

<!-- Up to 10 most important notes + a link to the full details -->

[See all meeting issues][label_meeting] including full text notes
or [join the next meeting][join].

[label_meeting]: https://github.com/rust-gamedev/wg/issues?q=label%3Ameeting

## Discussions

<!-- Links to handpicked reddit/twitter/urlo/etc threads that provide
useful information -->

## Requests for Contribution

<!-- Links to "good first issue"-labels or direct links to specific tasks -->

## Jobs

<!-- An optional section for new jobs related to Rust gamedev -->

## Bonus

<!-- Bonus section to make the newsletter more interesting
and highlight events from the past. -->

## Future news

<!-- Section to get more people involved in writing news. -->

Editing this newsletter wouldn't be possible without [your contributions][news_current_prs]. 
Thanks to everyone who helped us this month!

If you want something mentioned in the next newsletter, [send us a pull request][pr].

You can also get an early look at pending issues for the [next newsletter][news_future_prs].

[news_current_prs]: https://github.com/rust-gamedev/rust-gamedev.github.io/pulls?q=is%3Apr+in%3Atitle+%27N52%27
[news_future_prs]: https://github.com/rust-gamedev/rust-gamedev.github.io/pulls?q=is%3Apr+in%3Atitle+%27N53%27

------

That's all news for today, thanks for reading!

Also, subscribe to our socials if you want to receive fresh news!
- X/Twitter: [@rust_gamedev][@x_rust_gamedev]
- Mastodon: [@rust_gamedev][@mastodon_rust_gamedev]
- Reddit: [/r/rust_gamedev][/r/rust_gamedev]

<!--
TODO: Add real links and un-comment once this post is published
**Discuss this post on**:
[/r/rust_gamedev](TODO),
[Mastodon](TODO),
[Twitter](TODO),
[Discord](https://discord.gg/yNtPTb2).
-->

[/r/rust_gamedev]: https://reddit.com/r/rust_gamedev
[@x_rust_gamedev]: https://twitter.com/rust_gamedev
[@mastodon_rust_gamedev]: https://mastodon.gamedev.place/@rust_gamedev
