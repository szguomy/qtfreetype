#ifndef QTFREETYPE_GLOBAL_H
#define QTFREETYPE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(QTFREETYPE_LIBRARY)
#define QTFREETYPE_EXPORT Q_DECL_EXPORT
#else
#define QTFREETYPE_EXPORT Q_DECL_IMPORT
#endif

#endif // QTFREETYPE_GLOBAL_H
