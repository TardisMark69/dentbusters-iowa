#############################################################
# DentBustersIowa.pro
# Qt Creator project file for the Dentbusters Iowa static website.
#
# This is a minimal Qt project that tracks the HTML/asset files
# so Qt Creator can open, edit, and manage them cleanly.
#
# Optional: if you ever want a desktop preview wrapper using
# QWebEngineView, uncomment the webenginewidgets lines below
# and add a main.cpp (stub provided separately).
#############################################################

QT       += core
# QT     += webenginewidgets   # Uncomment for QWebEngineView local preview

# No GUI / widgets by default (pure static site project)
# QT     += widgets            # Uncomment if adding a Qt GUI wrapper

TARGET   = DentBustersIowa
TEMPLATE = app

CONFIG   += c++17

# ── Source files ─────────────────────────────────────────
# Uncomment if/when you add a Qt C++ preview wrapper:
# SOURCES += main.cpp

# ── Web / static assets ──────────────────────────────────
# Listed here so Qt Creator shows them in the project tree.
DISTFILES += \
    index.html \
    Dentbusters_Logo_Blue.png

# ── Qt resource bundle ───────────────────────────────────
# Bundles index.html and the logo into the binary if you
# ever compile a preview app. Remove if staying purely static.
RESOURCES += dentbusters.qrc

# ── Output / build paths ─────────────────────────────────
DESTDIR   = $$PWD/build
OBJECTS_DIR = $$PWD/build/.obj
MOC_DIR   = $$PWD/build/.moc
RCC_DIR   = $$PWD/build/.rcc

# ── Install / deploy ─────────────────────────────────────
# Copies static files to build dir so a local server can serve them.
htmlfiles.files  = index.html
htmlfiles.path   = $$DESTDIR
assets.files     = Dentbusters_Logo_Blue.png
assets.path      = $$DESTDIR

INSTALLS += htmlfiles assets
