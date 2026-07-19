# Pyramid_3D
The following source code will create a four sided 3D pyramid with a square base and may be run in Processing 4.5.2 using either Java or Android mode (with minor changes). It was developed with MacOS (M4 Tahoe 26.5).  Face textures are taken from a single composite "tall" image (made up of the four side images) with an aspect ratio of roughly 2:1 (length: width); a separate image is used for the square base.  

The 'normalized' composite image is used with textureMode(NORMAL) as shown below:
<img width="710" height="458" alt="TextureLayout" src="https://github.com/user-attachments/assets/e3185333-6648-4a27-9e83-3d6d59dcd732" />

Each side of the pyramid has three vertices; the approximate coordinates of each triangle above is used with its respective vertex(). Slight modification of the coordinates may be necessary to center the images (usually widening the triangle base coordinates).  The square base uses normalized image values for each of the vertices, ie 0,0 (left,top) : 1,0 (right,top) : 1,1 (right, bottom) : 0,1 (left, bottom).  TextureMode(NORMAL) is described here: https://processing.org/reference/textureMode_.html.

Images need to Be Placed in a 'data' folder inside the sketch folder.


Output:

<img width="746" height="588" alt="pyr" src="https://github.com/user-attachments/assets/c9fbcbf1-0537-46f8-8692-068abaed5693" />



