.class Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/TabPluginDevice/CropImage$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

.field final synthetic val$fb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDevice/CropImage$5$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1973
    iput-object p1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iput-object p2, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->val$fb:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1976
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    #getter for: Lcom/htc/album/TabPluginDevice/CropImage;->mActivityState:S
    invoke-static {v0}, Lcom/htc/album/TabPluginDevice/CropImage;->access$2600(Lcom/htc/album/TabPluginDevice/CropImage;)S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1991
    :goto_0
    return-void

    .line 1977
    :cond_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->val$fb:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->val$fb:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1978
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->val$fb:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1979
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->val$fb:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 1987
    :goto_1
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->getScale()F

    move-result v0

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1988
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    invoke-virtual {v0, v2, v2, v3}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->center(ZZZ)V

    .line 1990
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1983
    :cond_2
    invoke-static {}, Lcom/htc/album/TabPluginDevice/CropImage;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mImage is null, using mBitmap for CropImageView"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v0, v0, Lcom/htc/album/TabPluginDevice/CropImage;->mImageView:Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;

    iget-object v1, p0, Lcom/htc/album/TabPluginDevice/CropImage$5$1$1;->this$2:Lcom/htc/album/TabPluginDevice/CropImage$5$1;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage$5$1;->this$1:Lcom/htc/album/TabPluginDevice/CropImage$5;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage$5;->this$0:Lcom/htc/album/TabPluginDevice/CropImage;

    iget-object v1, v1, Lcom/htc/album/TabPluginDevice/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v2}, Lcom/htc/album/TabPluginDevice/CropImage$CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    goto :goto_1
.end method
