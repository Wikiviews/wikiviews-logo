# Wikiviews Logo

![Wikiviews Logo](https://media.githubusercontent.com/media/Wikiviews/wikiviews-logo/master/dist/logo-300px-300dp%40160dpi.png)

The logo for the Wikiviews Project.

## Building
To render PNG images from the SVG source, you can use `make`. The build process depends on having the `inkscape` and
`python3` executable in your path.

The images are rendered in packages. Each package contains the exported PNGs, which belong to the same size in 'dp'
(density-independent pixels) on a predefined range of screens with common pixel densities.
So when you build a specific size, this size is interpreted as 'dp' and the corresponding PNGs for screens around 72dpi,
96dpi, 130dpi, 160dpi, 210dpi, 240dpi, 320dpi, 400dpi, 480dpi and 640dpi are redered. You can read more about 'dp' and
developing for different screen sizes and densities at the [Google Material Design Spec](https://material.google.com/layout/units-measurements.html).

If you need other densisties than the ones specified above, you may adapt `render-pngs.py`.

If you do not care about different screen densities and just wan't to get a PNG in a specified size in px, just render the bundle
whith your size sppecified and grab the rendered image for 160dpi. This export has the exact same size, as you specified. It is
named `exports/{YOUR-SIZE}dp/logo-{YOUR-SIZE}px-{YOUR-SIZE}dp@160dpi.png`.

### Building all sizes
There is a predefines list of common image sizes which can be used with
```shell
make
```
(or `make all` or `make pngs`)

This build includes the packages for 48dp, 192dp, 500dp, 1000dp, 2000dp.

### Building common sizes
There are targets for the sizes 48dp, 192dp, 500dp, 1000dp, 2000dp which are named `pngs{SIZE}dp`. Therefore the command for builing the 48dp package
is
```shell
make pngs48dp
```

### Building custom sizes
You can also build a package for a custom size (or even a list of custom sizes) with
```shell
make pngs SIZE={YOUR-SIZE-1} {YOUR-SIZE-2} {...}
```
e.g. `make pngs SIZE=42 23`

