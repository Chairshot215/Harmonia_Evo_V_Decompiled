.class public Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
.super Lcom/htc/opensense2/widget/ImageViewTouchBase;
.source "WallpaperPreviewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticImageView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 471
    invoke-direct {p0, p1}, Lcom/htc/opensense2/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 473
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 477
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 486
    invoke-super/range {p0 .. p5}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 488
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase;->mBitmapIsThumbnail:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 492
    :cond_0
    return-void
.end method
