import flet as ft


class FletCacheimg(ft.Image):
    def _get_control_name(self):
        return "flet_cacheimg"


class FletCacheCircleAvatar(ft.CircleAvatar):
    def _get_control_name(self):
        return "flet_cache_circle_avatar"
