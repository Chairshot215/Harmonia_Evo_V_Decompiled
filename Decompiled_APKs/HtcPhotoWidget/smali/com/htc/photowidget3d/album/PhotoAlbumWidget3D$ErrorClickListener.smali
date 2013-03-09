.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Lcom/htc/photowidget3d/widget/ListViewManager$OnErrorClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 674
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V

    return-void
.end method

.method private showAlbumMissing(Lcom/htc/photowidget3d/widget/FusionListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    .line 679
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[showAlbumMissing]"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorMissing()V

    .line 681
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1100(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    new-instance v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener$1;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener$1;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;)V

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->postDelayed(Ljava/lang/Runnable;J)V

    .line 693
    return-void
.end method

.method private showUnmountedLoading(Lcom/htc/photowidget3d/widget/FusionListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    .line 697
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[showUnmountedLoading]"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionListView;->showLoading()V

    .line 699
    iget-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1200(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    new-instance v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener$2;

    invoke-direct {v1, p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener$2;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;)V

    const-wide/16 v2, 0x7d0

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->postDelayed(Ljava/lang/Runnable;J)V

    .line 710
    return-void
.end method


# virtual methods
.method public onErrorClick(Lcom/htc/photowidget3d/widget/FusionListView;)V
    .locals 3
    .parameter "listView"

    .prologue
    .line 722
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, sdState:Ljava/lang/String;
    const-string v1, "shared"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    const v2, 0x7f050008

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->showToast(I)V
    invoke-static {v1, v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1300(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;I)V

    .line 745
    :goto_0
    return-void

    .line 726
    :cond_0
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    const v2, 0x7f05000a

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->showToast(I)V
    invoke-static {v1, v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1400(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;I)V

    goto :goto_0

    .line 728
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 729
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    const v2, 0x7f050009

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->showToast(I)V
    invoke-static {v1, v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1500(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;I)V

    goto :goto_0

    .line 730
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/htc/photowidget3d/widget/FusionListView;->getState()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 732
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mMediaScannerScanning:Z
    invoke-static {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 734
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[onErrorClick] mMediaScannerScanning, show loading."

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->showUnmountedLoading(Lcom/htc/photowidget3d/widget/FusionListView;)V

    goto :goto_0

    .line 739
    :cond_3
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[onErrorClick] show album missing."

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->showAlbumMissing(Lcom/htc/photowidget3d/widget/FusionListView;)V

    goto :goto_0

    .line 744
    :cond_4
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ErrorClickListener;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #calls: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->lanuchFolderPicker()V
    invoke-static {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1700(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)V

    goto :goto_0
.end method
