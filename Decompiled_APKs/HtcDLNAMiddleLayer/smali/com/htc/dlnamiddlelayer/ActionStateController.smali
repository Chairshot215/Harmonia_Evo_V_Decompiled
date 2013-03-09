.class public Lcom/htc/dlnamiddlelayer/ActionStateController;
.super Ljava/lang/Object;
.source "ActionStateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/ActionStateController$NextUriSupport;,
        Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;,
        Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;,
        Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;
    }
.end annotation


# static fields
.field protected static sAutoPlay:Z


# instance fields
.field protected mExtraRequest:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

.field protected mFollowCustomDuration:Z

.field protected mLastPlayingUri:Ljava/lang/String;

.field protected mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

.field protected mServeQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;",
            ">;"
        }
    .end annotation
.end field

.field private mbAutoPlay:Z

.field protected mbNeedSendStopMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/dlnamiddlelayer/ActionStateController;->sAutoPlay:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    .line 18
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mExtraRequest:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    .line 22
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mFollowCustomDuration:Z

    .line 24
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbNeedSendStopMessage:Z

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mLastPlayingUri:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbAutoPlay:Z

    .line 55
    return-void
.end method

.method private UpdateServerQueToRunAutoPlay(Lcom/htc/dlnamiddlelayer/InputStatus;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "status"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/dlnamiddlelayer/InputStatus;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, serverQue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;>;"
    const/4 v2, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->isFollowCustomDuration()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getPlaybackAction()Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    move-result-object v0

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-eq v0, v1, :cond_0

    .line 198
    iget v0, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->repeatState:I

    sget-object v1, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATONE:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 201
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    :cond_2
    iget v0, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->repeatState:I

    sget-object v1, Lcom/htc/dlnamiddlelayer/RepeatState;->REPEATALL:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 208
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_INCRESE_INDEX:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "[DLNA]UpdateServerQueToRunAutoPlay():play list auto switch next"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_3
    iget v0, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->repeatState:I

    sget-object v1, Lcom/htc/dlnamiddlelayer/RepeatState;->NOREPEAT:Lcom/htc/dlnamiddlelayer/RepeatState;

    invoke-virtual {v1}, Lcom/htc/dlnamiddlelayer/RepeatState;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 214
    iget-boolean v0, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->bEnd:Z

    if-ne v0, v2, :cond_4

    .line 216
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    invoke-virtual {p0, v0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->setPlaybackAction(Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;)V

    .line 217
    iput-boolean v2, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbNeedSendStopMessage:Z

    .line 218
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLNA]UpdateServerQueToRunAutoPlay():play list end stop!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->repeatState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_4
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_INCRESE_INDEX:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLNA]UpdateServerQueToRunAutoPlay():play list auto switch next"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->repeatState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private declared-synchronized removeCurrentStage()V
    .locals 2

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_0
    monitor-exit p0

    return-void

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public IsJumpToFirstItem()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 174
    sget-boolean v1, Lcom/htc/dlnamiddlelayer/ActionStateController;->sAutoPlay:Z

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getPlaybackAction()Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    move-result-object v1

    sget-object v2, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-ne v1, v2, :cond_0

    .line 180
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsNeedSendStopMessage()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbNeedSendStopMessage:Z

    return v0
.end method

.method public declared-synchronized OnRendererStateChangedAction(Lcom/htc/dlnamiddlelayer/InputStatus;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    .locals 5
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    .line 235
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/htc/dlnamiddlelayer/ActionStateController;->sAutoPlay:Z

    if-nez v1, :cond_0

    .line 236
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    :goto_0
    monitor-exit p0

    return-object v0

    .line 239
    :cond_0
    if-nez p1, :cond_1

    .line 240
    :try_start_1
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    goto :goto_0

    .line 243
    :cond_1
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA]OnRendererStateChangedAction()+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbAutoPlay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Que:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .line 250
    .local v0, ret:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    iget-object v1, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PLAYING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v1, v2, :cond_3

    .line 252
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUriDMR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mLastPlayingUri:Ljava/lang/String;

    .line 253
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbAutoPlay:Z

    .line 281
    :cond_2
    :goto_1
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DLNA]OnRendererStateChangedAction()-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbAutoPlay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Que:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 235
    .end local v0           #ret:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 256
    .restart local v0       #ret:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :cond_3
    :try_start_2
    iget-object v1, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbAutoPlay:Z

    if-ne v1, v4, :cond_4

    .line 259
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/htc/dlnamiddlelayer/ActionStateController;->UpdateServerQueToRunAutoPlay(Lcom/htc/dlnamiddlelayer/InputStatus;Ljava/util/ArrayList;)V

    .line 260
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbAutoPlay:Z

    .line 262
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ret:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    check-cast v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    .restart local v0       #ret:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    goto :goto_1

    .line 266
    :cond_4
    iget-object v1, p1, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v2, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_TRANSITIONING:Lcom/awox/jUPnPCP/UPnPPlayState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_2

    goto :goto_1
.end method

.method public SetNeedSendStopMessageState(Z)V
    .locals 0
    .parameter "bNeed"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbNeedSendStopMessage:Z

    .line 169
    return-void
.end method

.method public declared-synchronized advanceToNextStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    .locals 1

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->removeCurrentStage()V

    .line 391
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->getCurrentStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 394
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAutoPlayStatus()V
    .locals 3

    .prologue
    .line 150
    sget-boolean v0, Lcom/htc/dlnamiddlelayer/ActionStateController;->sAutoPlay:Z

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbAutoPlay:Z

    .line 155
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->clearServeQueue()V

    .line 157
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DLNA]clearAutoPlayStatus()+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mbAutoPlay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized clearServeQueue()V
    .locals 1

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    monitor-exit p0

    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentStage()Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    .locals 2

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPlaybackAction()Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;
    .locals 1

    .prologue
    .line 359
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServeAction(Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;Lcom/htc/dlnamiddlelayer/InputStatus;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    .locals 3
    .parameter "request"
    .parameter "status"

    .prologue
    .line 117
    monitor-enter p0

    if-nez p2, :cond_0

    .line 118
    :try_start_0
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    if-ne p1, v0, :cond_1

    .line 121
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    goto :goto_0

    .line 123
    :cond_1
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;->REQUEST_SWITCH:Lcom/htc/dlnamiddlelayer/ActionStateController$ExtraRequest;

    if-ne p1, v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->clearServeQueue()V

    .line 127
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->clearAutoPlayStatus()V

    .line 129
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switch Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-ne v0, v1, :cond_2

    .line 133
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request switch : isEnd ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->bEnd:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    goto :goto_0

    .line 143
    :cond_3
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getServeAction(Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;Lcom/htc/dlnamiddlelayer/InputStatus;)Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    .locals 3
    .parameter "action"
    .parameter "status"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    .line 65
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->clearServeQueue()V

    .line 67
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->clearAutoPlayStatus()V

    .line 69
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-ne v0, v1, :cond_4

    .line 71
    if-nez p2, :cond_0

    .line 73
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "getServeAction: status is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :goto_0
    monitor-exit p0

    return-object v0

    .line 77
    :cond_0
    :try_start_1
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionPlay request: DMR status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PLAYING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_UNKNOWN:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_NO_MEDIA:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-eq v0, v1, :cond_1

    iget-object v0, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_TRANSITIONING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_3

    .line 86
    :cond_1
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Prepare to Set New uri"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_SETNEW_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 110
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    goto :goto_0

    .line 91
    :cond_3
    iget-object v0, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->playStateDMR:Lcom/awox/jUPnPCP/UPnPPlayState;

    sget-object v1, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PAUSED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne v0, v1, :cond_2

    .line 94
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "Paused State to Play State"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mServeQueue:Ljava/util/ArrayList;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 100
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-ne v0, v1, :cond_5

    .line 102
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_PAUSE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    goto :goto_0

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-ne v0, v1, :cond_2

    .line 106
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_STOP:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;

    goto/16 :goto_0

    .line 112
    :cond_6
    sget-object v0, Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;->SERVE_NONE:Lcom/htc/dlnamiddlelayer/ActionStateController$ServeStage;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized isFollowCustomDuration()Z
    .locals 1

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mFollowCustomDuration:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFollowCustomDuration(Z)V
    .locals 1
    .parameter "bFlag"

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mFollowCustomDuration:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPlaybackAction(Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    .line 366
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/ActionStateController;->mPlaybackAction:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    sget-object v1, Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;->ACTION_PLAY:Lcom/htc/dlnamiddlelayer/ActionStateController$PlaybackAction;

    if-eq v0, v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/htc/dlnamiddlelayer/ActionStateController;->clearServeQueue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_0
    monitor-exit p0

    return-void

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
