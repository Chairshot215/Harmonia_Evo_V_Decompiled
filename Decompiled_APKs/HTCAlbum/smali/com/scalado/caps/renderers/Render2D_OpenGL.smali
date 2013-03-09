.class public Lcom/scalado/caps/renderers/Render2D_OpenGL;
.super Lcom/scalado/caps/renderers/Render2D;
.source "Render2D_OpenGL.java"


# direct methods
.method public constructor <init>(Lcom/scalado/base/Size;)V
    .locals 1
    .parameter "screenSize"

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/scalado/caps/renderers/Render2D;-><init>()V

    .line 10
    invoke-direct {p0, p1}, Lcom/scalado/caps/renderers/Render2D_OpenGL;->nativeCreateCapsRender2D_OpenGL(Lcom/scalado/base/Size;)I

    move-result v0

    .line 11
    .local v0, res:I
    return-void
.end method

.method private native nativeCreateCapsRender2D_OpenGL(Lcom/scalado/base/Size;)I
.end method
