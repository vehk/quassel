TEMPLATE = app

include(../buildconf.pri)

RESOURCES   += ../../i18n/i18n.qrc \
               ../../src/images/icons.qrc

SRCPATH = ../../src
OBJECTS_DIR = .$$TARGET
RCC_DIR     = .$$TARGET

for(mod, MODULES) {
  INCLUDEPATH *= $$SRCPATH/$$mod
  LIBS *= -L../modules/$$dirname(mod) -l$$basename(mod)
  PRE_TARGETDEPS *= ../modules/$$dirname(mod)
}

SOURCES = $$SRCPATH/common/main.cpp
