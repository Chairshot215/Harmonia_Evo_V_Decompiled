.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Lcom/htc/photowidget3d/widget/ListViewManager$OnListItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V
    .locals 0
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V

    return-void
.end method

.method private launchAlbum(I)V
    .locals 7
    .parameter "pos"

    .prologue
    .line 535
    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v4, v4, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v4, p1}, Lcom/htc/photowidget3d/image/ImageProvider;->getImageAt(I)Lcom/htc/photowidget3d/image/IImage;

    move-result-object v1

    .line 536
    .local v1, image:Lcom/htc/photowidget3d/image/IImage;
    if-nez v1, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v4, v4, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v4}, Lcom/htc/photowidget3d/image/ImageProvider;->getImageListParam()Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    move-result-object v2

    .line 540
    .local v2, param:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;
    if-eqz v2, :cond_0

    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mFolderType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;->mBucketDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, collectionInfo:Ljava/lang/String;
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[launchAlbum] Collection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Pos = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.album.action.VIEW_FOLDER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 548
    .local v3, startAlbum:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v1}, Lcom/htc/photowidget3d/image/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const-string v4, "folder_type"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const/high16 v4, 0x1400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 552
    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->getContext()Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1000(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onListItemClick(Lcom/htc/photowidget3d/widget/FusionListView;I)V
    .locals 2
    .parameter "listView"
    .parameter "pos"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListItemClickListener onListItemClick Widget is destroy"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionListView;->getListView()Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionListView;->getListView()Lcom/htc/fusion/fx/controls/FxListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0, p2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListItemClickListener;->launchAlbum(I)V

    goto :goto_0
.end method
