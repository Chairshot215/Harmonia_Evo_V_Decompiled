.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Lcom/htc/photowidget3d/widget/ListViewManager$OnListViewChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V

    return-void
.end method


# virtual methods
.method public onSelectedIndexChanged(Lcom/htc/photowidget3d/widget/FusionListView;III)V
    .locals 7
    .parameter "listView"
    .parameter "selectedIndex"
    .parameter "visibileBegin"
    .parameter "visibileEnd"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListViewChangeListener onSelectedIndexChanged Widget is destroy"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$900(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v6

    new-instance v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener$1;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ListViewChangeListener;ILcom/htc/photowidget3d/widget/FusionListView;II)V

    invoke-interface {v6, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
