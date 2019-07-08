%% Name - Esuabom Dijemeni
% Date - 08/07/2019
% Purpose - Extract isosurface data from volume data

%% Step 01 - clear and close all
clear all
close all
clc

%% Example 01 - Draw Isosurface with Lighting
figure;
[x,y,z,v] = flow;
p = patch(isosurface(x,y,z,v,-3));
isonormals(x,y,z,v,p)
p.FaceColor = 'red';
p.EdgeColor = 'none';
daspect([1 1 1])
view(3);
axis tight
camlight
lighting gouraud

%% Example 02 - Set Isosurface Colors
figure;
[x,y,z,v] = flow;
[faces, verts, colors] = isosurface(x,y,z,v,-3,x);
patch('Vertices',verts,'Faces',faces, 'FaceVertexCData',colors,...
    'FaceColor','interp','EdgeColor','interp')
view(30,-15)
axis vis3d
colormap copper