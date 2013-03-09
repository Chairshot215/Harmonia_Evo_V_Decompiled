.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener$2;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->showUnmountedLoading(Lcom/htc/photowidget3d/widget/FusionListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener$2;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 704
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener$2;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;

    iget-object v1, v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v1, v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/ListViewManager;->getListView()Lcom/htc/photowidget3d/widget/FusionListView;

    move-result-object v0

    .line 705
    .local v0, listView:Lcom/htc/photowidget3d/widget/FusionListView;
    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/FusionListView;->hideErrorLoading()V

    .line 709
    :cond_0
    return-void
.end method
