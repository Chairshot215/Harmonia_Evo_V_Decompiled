.class public Lcom/htc/photowidget3d/grid/BitmapArray;
.super Ljava/lang/Object;
.source "BitmapArray.java"


# instance fields
.field private mBmp:Landroid/graphics/Bitmap;

.field private mbDecError:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bmp"
    .parameter "bDecError"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/grid/BitmapArray;->mBmp:Landroid/graphics/Bitmap;

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/grid/BitmapArray;->mbDecError:Z

    .line 16
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/BitmapArray;->mBmp:Landroid/graphics/Bitmap;

    .line 17
    iput-boolean p2, p0, Lcom/htc/photowidget3d/grid/BitmapArray;->mbDecError:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/BitmapArray;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isDecError()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/htc/photowidget3d/grid/BitmapArray;->mbDecError:Z

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bmp"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/BitmapArray;->mBmp:Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method

.method public setDecError(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/photowidget3d/grid/BitmapArray;->mbDecError:Z

    .line 38
    return-void
.end method
