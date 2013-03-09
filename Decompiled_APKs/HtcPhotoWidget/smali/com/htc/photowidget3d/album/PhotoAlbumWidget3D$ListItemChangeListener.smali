.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V

    return-void
.end method


# virtual methods
.method public onListItemChanged(Lcom/htc/photowidget3d/widget/FusionListView;ILcom/htc/fusion/fx/controls/FxDynamicImage;)V
    .locals 4
    .parameter "listView"
    .parameter "pos"
    .parameter "dyImage"

    .prologue
    .line 647
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onListItemChanged] Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-wide v2, v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWidgetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->onListItemCreated(Lcom/htc/photowidget3d/widget/FusionListView;ILcom/htc/fusion/fx/controls/FxDynamicImage;)V

    .line 651
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onListItemChanged] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void
.end method

.method public onListItemCreated(Lcom/htc/photowidget3d/widget/FusionListView;ILcom/htc/fusion/fx/controls/FxDynamicImage;)V
    .locals 10
    .parameter "listView"
    .parameter "pos"
    .parameter "dyImage"

    .prologue
    .line 593
    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionListView;->getListView()Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v0

    .line 594
    .local v0, begin:I
    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionListView;->getListView()Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxListView;->getLastVisibleIndex()I

    move-result v3

    .line 595
    .local v3, end:I
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onListItemCreated] Id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-wide v8, v8, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWidgetId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pos = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", begin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", end = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v6, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v6, v6, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v6, p2}, Lcom/htc/photowidget3d/image/ImageProvider;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v5

    .line 599
    .local v5, image:Lcom/htc/photowidget3d/image/IImage;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/htc/photowidget3d/image/IImage;->isCorrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 601
    :cond_0
    invoke-virtual {p3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 634
    :goto_0
    return-void

    .line 605
    :cond_1
    const/4 v2, 0x0

    .line 606
    .local v2, canRecycle:Z
    iget-object v6, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v6, v6, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Lcom/htc/photowidget3d/image/ImageProvider;->getCachedBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 607
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-nez v1, :cond_2

    .line 609
    iget-object v6, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v6, v6, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v6, p2}, Lcom/htc/photowidget3d/image/ImageProvider;->getImageExif(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 610
    invoke-interface {v5}, Lcom/htc/photowidget3d/image/IImage;->getDegreesRotated()I

    move-result v6

    invoke-static {v1, v6}, Lcom/htc/opensense/album/util/ImageUtils;->rotatePhotoByOrientaton(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 611
    const/4 v2, 0x1

    .line 614
    :cond_2
    if-nez v1, :cond_4

    .line 616
    invoke-static {p3}, Lcom/htc/photowidget3d/util/FusionUtils;->playLoadingMarker(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 633
    :cond_3
    :goto_1
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[onListItemCreated] ---"

    invoke-static {v6, v7}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_4
    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionListView;->getListItemFrameLoaded()I

    move-result v4

    .line 621
    .local v4, frameLoaded:I
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onListItemCreated] Set Image, bitmap = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", frameLoaded = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 624
    invoke-virtual {p3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->stop()V

    .line 626
    :cond_5
    invoke-virtual {p3, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 627
    int-to-float v6, v4

    invoke-virtual {p3, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFrame(F)V

    .line 629
    if-eqz v2, :cond_3

    .line 630
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public onListItemDestroyed(Lcom/htc/photowidget3d/widget/FusionListView;I)V
    .locals 4
    .parameter "listView"
    .parameter "pos"

    .prologue
    .line 665
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onListItemDestroyed] Id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-wide v2, v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWidgetId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v0, v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v0, p2}, Lcom/htc/photowidget3d/image/ImageProvider;->removeDecodeTask(I)V

    .line 669
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onListItemDestroyed] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method
