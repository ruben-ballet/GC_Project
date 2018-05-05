#include "ModelData/ModelObject.h"

namespace __3DWorld__ {

ModelObject::ModelObject(QString path) {
    _loader.load(path.toLocal8Bit().constData());
    _meshes = _loader.getMeshes();
}

void ModelObject::draw(ShadingMode s_mode, FrameMode f_mode) {
    glPushMatrix();
    glMateriali(GL_FRONT, GL_SHININESS, 20);

    glShadeModel(s_mode);                       // Type of shader (flat, smooth)
    glPolygonMode(GL_FRONT_AND_BACK, f_mode);   // Type of frame (wirefram, filled)


    glBegin(GL_TRIANGLES);

    for (MLMesh mesh : _meshes) {
        //qDebug() << "nr vertices" << mesh.vertices.size();
        for (unsigned int i: mesh.indices) {
            MLVertex vertex = mesh.vertices[i];

            /*Vector3D v;
            v.setTo(vertex.position);
            v.normalize();*/
            //Vector3D v = vertex.normal;

            glNormal3d(
                vertex.normal.x(),
                vertex.normal.y(),
                vertex.normal.z()
            );

            glVertex3d(
                vertex.position.x(),
                vertex.position.y(),
                vertex.position.z()
            );
        }
    }
    glEnd();



    glPopMatrix();
}



}