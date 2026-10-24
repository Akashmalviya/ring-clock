# Ring Clock

Boxing round timer you can install on your phone's home screen.

## Put it online (free)
Pick one:
- **Netlify Drop:** open https://app.netlify.com/drop and drag this whole folder onto the page. You get an https link in a few seconds.
- **GitHub Pages:** push this folder to a GitHub repo, then Settings → Pages → Deploy from branch → main → / (root).

The app has to be served over https for installing and offline mode to work.

## Install it
- **iPhone (Safari):** open the link → Share button → Add to Home Screen → Add.
- **Android (Chrome):** open the link → menu (⋮) → Install app.

## Updating
Change the files and upload again. Bump `CACHE` in sw.js (e.g. ring-clock-v5) and `APP_VERSION` in index.html (e.g. 5) together. Phones update on next open, or tap "Check for updates" at the bottom of the app.
