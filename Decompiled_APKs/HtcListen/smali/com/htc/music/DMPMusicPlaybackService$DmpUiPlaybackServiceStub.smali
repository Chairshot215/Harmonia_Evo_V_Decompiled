.class Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;
.super Lcom/htc/music/IDmpUiPlaybackService$Stub;
.source "DMPMusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMPMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DmpUiPlaybackServiceStub"
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

    invoke-direct {p0}, Lcom/htc/music/IDmpUiPlaybackService$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    invoke-virtual {v0}, Lcom/htc/music/DMPMusicPlaybackService;->play()V

    return-void
.end method

.method public setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/music/DMPMusicPlaybackService$DmpUiPlaybackServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/DMPMusicPlaybackService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    #calls: Lcom/htc/music/DMPMusicPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V
    invoke-static/range {v0 .. v10}, Lcom/htc/music/DMPMusicPlaybackService;->access$5300(Lcom/htc/music/DMPMusicPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    return-void
.end method
