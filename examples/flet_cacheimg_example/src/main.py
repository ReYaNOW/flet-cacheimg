import flet as ft
from flet_cacheimg import FletCacheimg


def main(page: ft.Page):
    page.add(
        FletCacheimg(
            src="https://media.wexy.kz/default-bucket/car_washes/e6df3f4d-8d46-4f03-a6e4-14bcd7a277f8?AWSAccessKeyId=root_user&Signature=R0ywGkQxWA5xEIaCF46h5wHGR9I%3D&Expires=1754729234",
            width=150,
            height=150,
            tooltip="Кэшированное изображение",
            opacity=0.9,
            fit="cover",
        )
    )


ft.app(main)
