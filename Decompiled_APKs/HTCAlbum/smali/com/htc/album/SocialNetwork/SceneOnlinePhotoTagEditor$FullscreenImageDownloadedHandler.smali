.class public Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FullscreenImageDownloadedHandler;
.super Ljava/lang/Object;
.source "SceneOnlinePhotoTagEditor.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetworkManager/NotifyLiveImageState$ImageDownloadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FullscreenImageDownloadedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;


# direct methods
.method protected constructor <init>(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageDownloaded(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 575
    const-string v0, "SceneOnlinePhotoTagEditor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SceneOnlinePhotoTagEditor][onImageDownloaded]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor$FullscreenImageDownloadedHandler;->this$0:Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    #getter for: Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->mMainView:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;->access$200(Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FullFilmView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->notifyMediaDataChange(I)V

    .line 577
    return-void
.end method
