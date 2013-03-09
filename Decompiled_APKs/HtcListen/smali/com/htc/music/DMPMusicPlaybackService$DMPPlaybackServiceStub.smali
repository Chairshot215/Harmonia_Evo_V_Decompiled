.class Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;
.super Lcom/htc/music/IMusicPluginService$Stub;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DMPPlaybackServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/DMPMusicPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/music/DMPMusicPlaybackService;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/music/IMusicPluginService$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public clearAlbumArtRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->clearAlbumArtRequests()V

    return-void
.end method

.method public clearNowplayingQueueRequests()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->clearNowplayingQueueRequests()V

    return-void
.end method

.method public duration()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumArtByIndex(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtByIndex(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtPath()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPath()V

    return-void
.end method

.method public getAlbumArtPathByPosition(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPathByPosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumArtPathByShufflePosition(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumArtPathByShufflePosition(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferingPercent()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getBufferingPercent()I

    move-result v0

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getComposer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getGenre()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotifyIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getNotifyIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getNowplayingQueue(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v2

    const/16 v3, 0x2aff

    invoke-virtual {v2, v3}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "interval"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v2}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getPluginIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getPluginNotReadyMsg()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getPluginNotReadyMsg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionByShufflePosition(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getPositionByShufflePosition(I)I

    move-result v0

    return v0
.end method

.method public getQueuePosition()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getQueueSize()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getShufflePositionByPosition(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getShufflePositionByPosition(I)I

    move-result v0

    return v0
.end method

.method public getTrackDetails(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->getTrackDetails(I)V

    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPluginReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->isPluginReady()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->checkBeforeNextOrPre()Z
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$5200(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v0

    const/16 v1, 0x2afa

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "** Press prev button too fast, ignore this time..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->play()V

    return-void
.end method

.method public position()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->checkBeforeNextOrPre()Z
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$5200(Lcom/htc/music/DMPMusicPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    #getter for: Lcom/htc/music/DMPMusicPlaybackService;->mNonUIHandler:Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;
    invoke-static {v0}, Lcom/htc/music/DMPMusicPlaybackService;->access$1000(Lcom/htc/music/DMPMusicPlaybackService;)Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;

    move-result-object v0

    const/16 v1, 0x2af9

    invoke-virtual {v0, v1}, Lcom/htc/music/DMPMusicPlaybackService$NonUIHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "[DMPMusicPlaybackService]"

    const-string v1, "** Press prev button too fast, ignore this time..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/htc/music/IPluginIPCNotify;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->registerCallback(Lcom/htc/music/IPluginIPCNotify;)V

    return-void
.end method

.method public seek(J)J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/DMPMusicPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setQueuePosition(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/DMPMusicPlaybackService;->setShuffleMode(I)V

    return-void
.end method

.method public startPluginActivity()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->startPluginActivity()V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->stop()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DMPPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->unregisterCallback()V

    return-void
.end method
