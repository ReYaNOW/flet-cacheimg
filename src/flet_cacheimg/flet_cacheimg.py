import flet as ft
from flet.core.constrained_control import ConstrainedControl


class FletCacheimg(ConstrainedControl):
    def __init__(
        self,
        src: str,
        width: float | None = None,
        height: float | None = None,
        visible: bool | None = None,
        tooltip: str | None = None,
        opacity: float | None = None,
        fit: str | None = None,
        top: float | None = None,
        left: float | None = None,
        right: float | None = None,
        bottom: float | None = None,
        **kwargs,
    ):
        super().__init__(
            width=width,
            height=height,
            visible=visible,
            tooltip=tooltip,
            opacity=opacity,
            top=top,
            left=left,
            right=right,
            bottom=bottom,
            **kwargs,
        )
        self.src = src  # ✅ это ОК, потому что ниже определён сеттер
        self.fit = fit  # ✅

    def _get_control_name(self):
        return "flet_cacheimg"

    # src
    @property
    def src(self):
        return self._get_attr("src")

    @src.setter
    def src(self, value):
        self._set_attr("src", value)

    # fit
    @property
    def fit(self):
        return self._get_attr("fit")

    @fit.setter
    def fit(self, value):
        self._set_attr("fit", value)
