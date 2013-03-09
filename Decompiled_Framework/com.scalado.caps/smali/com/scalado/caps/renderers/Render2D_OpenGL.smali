.class public Lcom/scalado/caps/renderers/Render2D_OpenGL;
.super Lcom/scalado/caps/renderers/Render2D;
.source "Render2D_OpenGL.java"


# direct methods
.method public constructor <init>(Lcom/scalado/base/Size;)V
    .locals 1

    invoke-direct {p0}, Lcom/scalado/caps/renderers/Render2D;-><init>()V

    invoke-direct {p0, p1}, Lcom/scalado/caps/renderers/Render2D_OpenGL;->nativeCreateCapsRender2D_OpenGL(Lcom/scalado/base/Size;)I

    move-result v0

    return-void
.end method

.method private native nativeCreateCapsRender2D_OpenGL(Lcom/scalado/base/Size;)I
.end method
