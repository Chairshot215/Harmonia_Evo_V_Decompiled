.class abstract Landroid/view/GLES20Layer;
.super Landroid/view/HardwareLayer;
.source "GLES20Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Layer$Finalizer;
    }
.end annotation


# instance fields
.field mFinalizer:Landroid/view/GLES20Layer$Finalizer;

.field mLayer:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/HardwareLayer;-><init>()V

    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/HardwareLayer;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method copyInto(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    iget v1, p1, Landroid/graphics/Bitmap;->mNativeBitmap:I

    invoke-static {v0, v1}, Landroid/view/GLES20Canvas;->nCopyLayer(II)Z

    move-result v0

    return v0
.end method

.method destroy()V
    .locals 1

    iget-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    invoke-virtual {v0}, Landroid/view/GLES20Layer$Finalizer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    return-void
.end method

.method public getLayer()I
    .locals 1

    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    return v0
.end method

.method update(IIZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/HardwareLayer;->update(IIZ)V

    return-void
.end method
