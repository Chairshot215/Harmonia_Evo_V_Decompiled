.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;
.super Ljava/lang/Object;
.source "PhotoAlbumWidget3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

.field final synthetic val$SDState:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iput-object p2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->val$SDState:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 838
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, ">> [onPostExecute] run"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    :try_start_0
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;
    invoke-static {v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 843
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;
    invoke-static {v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->start()V

    .line 845
    :cond_0
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    if-eqz v3, :cond_1

    .line 846
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->start()V

    .line 848
    :cond_1
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 901
    :goto_0
    return-void

    .line 851
    :cond_2
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/widget/ListViewManager;->getListView()Lcom/htc/photowidget3d/widget/FusionListView;

    move-result-object v2

    .line 852
    .local v2, listView:Lcom/htc/photowidget3d/widget/FusionListView;
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    invoke-virtual {v3}, Lcom/htc/photowidget3d/image/ImageProvider;->getCount()I

    move-result v0

    .line 853
    .local v0, count:I
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/opensense/album/util/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 855
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[onPostExecute] Storage is not ready."

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    if-eqz v2, :cond_3

    .line 859
    const-string v3, "shared"

    iget-object v4, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->val$SDState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 861
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[onPostExecute] showSdcardShared"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showSdcardShared()V

    .line 893
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageCollectionLoader:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v0           #count:I
    .end local v2           #listView:Lcom/htc/photowidget3d/widget/FusionListView;
    :goto_2
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<< [onPostExecute] run"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 866
    .restart local v0       #count:I
    .restart local v2       #listView:Lcom/htc/photowidget3d/widget/FusionListView;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[onPostExecute] showSdcardRemoved"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showSdcardRemoved()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 895
    .end local v0           #count:I
    .end local v2           #listView:Lcom/htc/photowidget3d/widget/FusionListView;
    :catch_0
    move-exception v1

    .line 897
    .local v1, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onPostExecute] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 872
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #count:I
    .restart local v2       #listView:Lcom/htc/photowidget3d/widget/FusionListView;
    :cond_5
    if-gtz v0, :cond_6

    .line 874
    :try_start_2
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[onPostExecute] Empty list"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isMediaShared:Z
    invoke-static {v3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1900(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 877
    if-eqz v2, :cond_3

    .line 879
    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorMissing()V

    goto :goto_1

    .line 885
    :cond_6
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[onPostExecute] List created!!"

    invoke-static {v3, v4}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;->this$1:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v3, v3, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mListViewManager:Lcom/htc/photowidget3d/widget/ListViewManager;

    invoke-virtual {v3, v0}, Lcom/htc/photowidget3d/widget/ListViewManager;->makeAndSetCollection(I)V

    .line 887
    if-eqz v2, :cond_3

    .line 889
    invoke-virtual {v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showListView()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
