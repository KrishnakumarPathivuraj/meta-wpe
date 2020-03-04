FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI += "file://0001_aamp_gst_ocdm_adapter.patch \
"

SRCREV = "973db043e8f31ac5af4439b1b6240c0fbb0058f9"

PACKAGECONFIG = " ${@bb.utils.contains('DISTRO_FEATURES', 'opencdm', 'opencdm', '', d)}"
PACKAGECONFIG[opencdm]    = "-DCMAKE_DASH_DRM=ON -DCMAKE_USE_OPENCDM_ADAPTER=ON,,"
