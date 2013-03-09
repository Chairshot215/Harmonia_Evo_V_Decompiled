.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Lcom/htc/photowidget3d/image/ImageProvider$DataRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataRefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 452
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V

    return-void
.end method


# virtual methods
.method public onImageDecoded(ILandroid/graphics/Bitmap;)V
    .locals 2
    .parameter "position"
    .parameter "bitmap"

    .prologue
    .line 462
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onImageDecoded] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataRefreshHandler onImageDecoded Widget is destroy"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$700(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    new-instance v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;ILandroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 489
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onImageDecoded] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
