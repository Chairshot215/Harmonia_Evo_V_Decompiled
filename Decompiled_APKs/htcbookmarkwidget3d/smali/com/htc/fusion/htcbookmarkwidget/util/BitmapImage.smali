.class public Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;
.super Ljava/lang/Object;
.source "BitmapImage.java"

# interfaces
.implements Lcom/htc/fusion/htcbookmarkwidget/util/IImage;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 34
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/htc/fusion/htcbookmarkwidget/util/BitmapImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 17
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
