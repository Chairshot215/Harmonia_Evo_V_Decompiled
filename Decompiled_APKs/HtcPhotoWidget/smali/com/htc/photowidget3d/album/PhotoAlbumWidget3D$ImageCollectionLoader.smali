.class Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;
.super Landroid/os/AsyncTask;
.source "PhotoAlbumWidget3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCollectionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

.field final synthetic this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;


# direct methods
.method public constructor <init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)V
    .locals 1
    .parameter
    .parameter "param"

    .prologue
    .line 754
    iput-object p1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->mParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    .line 755
    iput-object p2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->mParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    .line 756
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v1, 0x0

    .line 804
    :try_start_0
    iget-object v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v2, v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mImageProvider:Lcom/htc/photowidget3d/image/ImageProvider;

    iget-object v3, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->mParam:Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;

    invoke-virtual {v2, v3}, Lcom/htc/photowidget3d/image/ImageProvider;->doCreateImageList(Lcom/htc/photowidget3d/image/ImageManager$ImageListParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    array-length v2, p1

    if-lez v2, :cond_0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 806
    :catch_0
    move-exception v0

    .line 808
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[doInBackground] Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 749
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 821
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[onPostExecute] ++"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/opensense/album/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, SDState:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->isDestroy:Z
    invoke-static {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$600(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImageCollectionLoader onPostExecute Widget is destroy"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mWorkerHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    invoke-static {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$2000(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v1

    new-instance v2, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader$1;-><init>(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->post(Ljava/lang/Runnable;)V

    .line 903
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[onPostExecute] --"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 749
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 766
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[onPreExecute] ++"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;
    invoke-static {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    #getter for: Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mUsbHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;
    invoke-static {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$1800(Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;)Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$UsbBroadcastHandler;->stop()V

    .line 773
    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v1, v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$ImageCollectionLoader;->this$0:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;

    iget-object v1, v1, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->mBroadcastHandler:Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D$BroadcastHandler;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[onPreExecute] --"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 788
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/photowidget3d/album/PhotoAlbumWidget3D;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPreExecute] Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
