.class Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;
.super Ljava/lang/Object;
.source "WallpaperPreviewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapUpdater"
.end annotation


# instance fields
.field private mNewBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;


# direct methods
.method public constructor <init>(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter "newBitmap"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->mNewBitmap:Landroid/graphics/Bitmap;

    .line 344
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 352
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mActivityState:S
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$000(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 361
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->mNewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->mNewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->mNewBitmap:Landroid/graphics/Bitmap;

    #setter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$102(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 355
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$600(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$100(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$600(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    #getter for: Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->mImageView:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->access$600(Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;)Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v3}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$StaticImageView;->center(ZZZ)V

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer$BitmapUpdater;->this$0:Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/WallpaperPreviewer;->removeDialog(I)V

    goto :goto_0
.end method
