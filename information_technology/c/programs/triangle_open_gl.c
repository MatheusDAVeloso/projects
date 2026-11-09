// to compile this program, need to execute the following command:
// gcc open_gl.c -lGL -lGLU -lglut -o test.exe

#include <stdio.h>
#include <GL/glut.h>

void displayFunc() {
    // clear buffer
    glClear(GL_COLOR_BUFFER_BIT);

    // the top left corner start in (-1.0, -1.0)
    glBegin(GL_POLYGON);
    glColor3f(1.0, 0.0, 0.0); glVertex3f( 0.0,  1.0, 0.0);
    glColor3f(0.0, 1.0, 0.0); glVertex3f(-1.0, -1.0, 0.0);
    glColor3f(0.0, 0.0, 1.0); glVertex3d( 1.0, -1.0, 0.0);
    glEnd();

    glFlush();

    // refresh
    glutSwapBuffers();
}

int main(int argc, char **argv) {

    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);

    glutCreateWindow("My Window");
    glutInitWindowSize(150, 150);

    // call every time the glut library needs to redraw a window
    glutDisplayFunc(displayFunc);

    glutMainLoop();

    return 0;
}