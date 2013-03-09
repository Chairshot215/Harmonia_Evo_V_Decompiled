.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;->onImageDecoded(ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;ILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;

    iput p2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;->val$position:I

    iput-object p3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 475
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onImageDecoded] Refresh pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w/ bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;

    iget-object v0, v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v0, v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    iget v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$DataRefreshHandler$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/ListViewManager;->refresh(I)V

    .line 487
    return-void
.end method
