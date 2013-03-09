.class Landroid/view/GLES20TextureLayer;
.super Landroid/view/GLES20Layer;
.source "GLES20TextureLayer.java"


# instance fields
.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mTexture:I


# direct methods
.method constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Landroid/view/GLES20Layer;-><init>()V

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-static {p1, v0}, Landroid/view/GLES20Canvas;->nCreateTextureLayer(Z[I)I

    move-result v1

    iput v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    new-instance v1, Landroid/view/GLES20Layer$Finalizer;

    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-direct {v1, v2}, Landroid/view/GLES20Layer$Finalizer;-><init>(I)V

    iput-object v1, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    goto :goto_0
.end method


# virtual methods
.method end(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 3

    iget-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(IZ)V

    iput-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v0, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method isValid()Z
    .locals 1

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/GLES20TextureLayer;->mTexture:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method resize(II)V
    .locals 0

    return-void
.end method

.method setTransform(Landroid/graphics/Matrix;)V
    .locals 2

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p1, Landroid/graphics/Matrix;->native_instance:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nSetTextureLayerTransform(II)V

    return-void
.end method

.method start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method update(IIZ)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/GLES20Layer;->update(IIZ)V

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget-object v1, p0, Landroid/view/GLES20TextureLayer;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-static {v0, p1, p2, p3, v1}, Landroid/view/GLES20Canvas;->nUpdateTextureLayer(IIIZLandroid/graphics/SurfaceTexture;)V

    return-void
.end method
