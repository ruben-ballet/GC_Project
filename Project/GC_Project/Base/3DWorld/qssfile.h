#ifndef QSSFILE_H
#define QSSFILE_H

#include <QString>
#include <QFile>

namespace Frost {

class QSSFile {
public:
    QSSFile(const QString filename);
    ~QSSFile();
    QString toString() const;
private:
    QFile*      _file;
    QString     _contents;

    void        receiveContents();
};
}

#endif // QSSFILE_H
