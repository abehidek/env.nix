<h1 align="center">
  <!-- <br> -->
  <!-- [Project's Logo] -->
  <br>
  Env.nix
  <br>
</h1>

<h4 align="center">Have Nix, Have the power of all environments.</h4>

<!-- <p align="center"> [Project's badges] </p> -->

<p align="center">
  <a href="#about">About</a> •
  <a href="#key-features">Key Features</a> •
  <a href="#getting-started">Getting Started</a> •
  <a href="#faq">FAQ</a> •
  <a href="#roadmap">Roadmap</a> •
  <!-- <a href="#support">Support</a> • -->
  <!-- <a href="#license">License</a> -->
</p>

<!-- ![screenshot](screenshots/1.jpg) -->

## About

Collection of Nix Shells for Developing purposes.

By using the Nix package manager you can have any environment for development in your machine, all this happens due to [Nix's reproducible builds and Nix's package manager with 80000 packages avaiable](https://nixos.org/).

## Key Features

- Get started with a simple dev environment for your application.
- Control your shell with one file, from custom environment variables to avaiable packages in your PATH.
- Have access to any necessary package in [Nix Packages](https://search.nixos.org/packages)
- Or build your own package using the native Nix functions.

## Getting Started

### Prerequisites

First things first, it's necessary to have Nix installed in your machine, it currently supports most linux distributions, MacOS and Windows through WSL2. You can see [here the instructions details for installing on each operating system](https://nixos.org/download.html).

Most of the Nix dev environment listed here will use a `flake.nix`, however it's an upcoming feature yet for Nix so to use properly you can either use a `shell.nix` and fetch the `flake.nix`, or you can install direnv in your machine and use the `.envrc` file

### Installing and Running

You can both clone this repository or just extract the raw file string and put in your flake or shell.

```bash
# Clone this repository
$ git clone https://github.com/abehidek/env.nix

# Go into the repository
$ cd env.nix
```

## FAQ

### Is it any good?

[yes.](https://news.ycombinator.com/item?id=3067434)

## Roadmap

- [x] Elixir dev env.
- [ ] Nodejs dev env.
  - [ ] Prisma
- [ ] Go dev env.
- [ ] Rust dev env.
  - [ ] Tauri

## Emailware

Env.nix is an [emailware](https://en.wiktionary.org/wiki/emailware). Meaning, if you liked using this app or it has helped you in any way, I'd like you send me an email at <hidek.abe@outlook.com> about anything you'd want to say about this software. I'd really appreciate it!

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request
<!--

## Support

You can also support us by:

<p align="left">
  <a href="https://www.buymeacoffee.com" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/purple_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a> &nbsp &nbsp
  <a href="https://www.patreon.com">
    <img src="https://c5.patreon.com/external/logo/become_a_patron_button@2x.png" width="160">
  </a>
</p>

## License

## Acknowledgments

## You may also like...

-->

---

> [abehidek.me](https://abehidek.me) &nbsp;&middot;&nbsp;
> GitHub [@abehidek](https://github.com/abehidek) &nbsp;&middot;&nbsp;
> Twitter [@guilhermehabe](https://twitter.com/guilhermehabe)
