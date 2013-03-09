.class public interface abstract Lcom/jme3/renderer/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# virtual methods
.method public abstract applyRenderState(Lcom/jme3/material/RenderState;)V
.end method

.method public abstract clearBuffers(ZZZ)V
.end method

.method public abstract deleteBuffer(Lcom/jme3/scene/VertexBuffer;)V
.end method

.method public abstract deleteFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract deleteImage(Lcom/jme3/texture/Image;)V
.end method

.method public abstract deleteShader(Lcom/jme3/shader/Shader;)V
.end method

.method public abstract deleteShaderSource(Lcom/jme3/shader/Shader$ShaderSource;)V
.end method

.method public abstract getCaps()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatistics()Lcom/jme3/renderer/Statistics;
.end method

.method public abstract renderMesh(Lcom/jme3/scene/Mesh;II)V
.end method

.method public abstract setBackgroundColor(Lcom/jme3/math/ColorRGBA;)V
.end method

.method public abstract setClipRect(IIII)V
.end method

.method public abstract setDepthRange(FF)V
.end method

.method public abstract setFrameBuffer(Lcom/jme3/texture/FrameBuffer;)V
.end method

.method public abstract setLighting(Lcom/jme3/light/LightList;)V
.end method

.method public abstract setShader(Lcom/jme3/shader/Shader;)V
.end method

.method public abstract setTexture(ILcom/jme3/texture/Texture;)V
.end method

.method public abstract setViewPort(IIII)V
.end method

.method public abstract setViewProjectionMatrices(Lcom/jme3/math/Matrix4f;Lcom/jme3/math/Matrix4f;)V
.end method

.method public abstract setWorldMatrix(Lcom/jme3/math/Matrix4f;)V
.end method
