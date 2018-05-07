#ifndef TEXTURE_H
#define TEXTURE_H

#include <QString>
#include <windows.h> // Needed to compile gl.h
#include <gl/GL.h>
#include <gl/GLU.h>
#include <SOIL.h>

namespace __3DWorld__ {

class Texture
{
public:
    Texture();
    void addTexture(QString path);
    void initialize();
    void use();

private:
    QString _texture;
    GLuint _texture_id;
    int _width, _heigth;


};

}

#endif // TEXTURE_H