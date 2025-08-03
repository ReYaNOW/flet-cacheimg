import flet as ft
from flet_cacheimg import FletCacheimg


def main(page: ft.Page):
    page.add(
        ft.Image(
            src="http://127.0.0.1:22888/assets/images/AccountEditPage/Sign%20up-pana.png",
            width=150,
            height=150,
            tooltip="Кэшированное изображение",
            opacity=0.9,
        )
    )
    print(1)


ft.app(main)
