.class Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;
.super Ljava/lang/Object;
.source "NewAlbumActivity.java"

# interfaces
.implements Lcom/google/android/apps/uploader/clients/picasa/PicasaConnector$OnAlbumChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createAlbum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public albumsChanged(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/uploader/clients/picasa/Album;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got create album response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/clients/picasa/Album;

    #setter for: Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->newAlbum:Lcom/google/android/apps/uploader/clients/picasa/Album;
    invoke-static {v1, v0}, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->access$302(Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;Lcom/google/android/apps/uploader/clients/picasa/Album;)Lcom/google/android/apps/uploader/clients/picasa/Album;

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v0, v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->callbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createAlbumSuccess:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v0, v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->callbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createAlbumFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public failed(Lcom/google/android/apps/uploader/ApplicationException;)V
    .locals 2
    .parameter

    .prologue
    .line 163
    const-string v0, "MediaUploader"

    const-string v1, "Couldn\'t create album."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/ApplicationException;->isAuthenticationException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v0, v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->callbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->problemWithAccountFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v0, v0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->callbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity$4;->this$0:Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;

    iget-object v1, v1, Lcom/google/android/apps/uploader/clients/picasa/NewAlbumActivity;->createAlbumFail:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
