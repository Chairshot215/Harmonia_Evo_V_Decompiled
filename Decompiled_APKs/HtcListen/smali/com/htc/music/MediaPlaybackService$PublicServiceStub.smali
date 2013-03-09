.class Lcom/htc/music/MediaPlaybackService$PublicServiceStub;
.super Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublicServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackService;)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/service/music/IHtcMediaPlaybackService$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumArtPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlbumId()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getArtistId()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioId()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getAudioId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRepeatMode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getShuffleMode()I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/music/MediaPlaybackService;->next(Z)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->play()V

    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->position()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->prev()V

    :cond_0
    return-void
.end method

.method public seek(J)J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/htc/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setRepeatMode(I)V

    :cond_0
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/htc/music/MediaPlaybackService;->setShuffleMode(I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    #calls: Lcom/htc/music/MediaPlaybackService;->isServiceReady(Ljava/lang/ref/WeakReference;)Z
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackService;->access$8600(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackService$PublicServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackService;->stop()V

    :cond_0
    return-void
.end method
