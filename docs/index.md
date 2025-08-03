# Introduction

FletCacheImg for Flet.

## Examples

```
import flet as ft

from flet_cacheimg import FletCacheImg


def main(page: ft.Page):
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER

    page.add(

                ft.Container(height=150, width=300, alignment = ft.alignment.center, bgcolor=ft.Colors.PURPLE_200, content=FletCacheImg(
                    tooltip="My new FletCacheImg Control tooltip",
                    value = "My new FletCacheImg Flet Control", 
                ),),

    )


ft.app(main)
```

## Classes

[FletCacheImg](FletCacheImg.md)


