import flet as ft
from flet_cacheimg import Cacheimg, CacheCircleAvatar


def main(page: ft.Page):
    page.add(
        Cacheimg(
            src="https://flet.dev/img/logo.svg",
            width=150,
            height=150,
            tooltip="Cached image",
            opacity=0.9,
        )
    )
    page.add(
        CacheCircleAvatar(
            radius=24,
            foreground_image_src='https://flet.dev/img/logo.svg',
        )
    )
    page.add(
        ft.CircleAvatar(
            radius=20,
            content=Cacheimg(
                src='https://flet.dev/img/logo.svg',
                width=40,
                height=40,
                fit=ft.ImageFit.COVER,
            ),
        )
    )


ft.app(main)
