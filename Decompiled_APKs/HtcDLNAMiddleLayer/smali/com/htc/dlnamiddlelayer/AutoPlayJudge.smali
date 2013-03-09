.class public Lcom/htc/dlnamiddlelayer/AutoPlayJudge;
.super Ljava/lang/Object;
.source "AutoPlayJudge.java"


# instance fields
.field protected mDoPlayNextItem:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->mDoPlayNextItem:Z

    return-void
.end method

.method private RemoveSubFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 75
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, a:I
    if-gtz v0, :cond_0

    .line 78
    const-string v1, ""

    .line 83
    :goto_0
    return-object v1

    .line 81
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, ret:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public clearAutoPlayJudge()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->mDoPlayNextItem:Z

    .line 14
    return-void
.end method

.method public rendererStateChangedAction_End(Lcom/awox/jUPnPCP/UPnPPlayState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->mDoPlayNextItem:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne p1, v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->mDoPlayNextItem:Z

    .line 28
    :cond_0
    return-void
.end method

.method public rendererStateChangedAction_IsPlayNextItem(Lcom/awox/jUPnPCP/UPnPPlayState;Lcom/htc/dlnamiddlelayer/InputStatus;)Z
    .locals 6
    .parameter "curState"
    .parameter "inputStastus"

    .prologue
    const/4 v0, 0x0

    .line 32
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->mDoPlayNextItem:Z

    if-eqz v3, :cond_0

    .line 40
    iget-object v3, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUri:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->RemoveSubFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, curUri:Ljava/lang/String;
    iget-object v3, p2, Lcom/htc/dlnamiddlelayer/InputStatus;->currentUriDMR:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->RemoveSubFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, curUriDMR:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 55
    .local v0, bRet:Z
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    sget-object v3, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_STOPPED:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne p1, v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->mDoPlayNextItem:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    const-string v3, "DLNAMiddlelayer"

    const-string v4, "[DLNA][AutoPlayJudge][rendererStateChangedAction_IsPlayNextItem]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curUriDMR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rendererStateChangedAction_Start(Lcom/awox/jUPnPCP/UPnPPlayState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 18
    sget-object v0, Lcom/awox/jUPnPCP/UPnPPlayState;->PLAYSTATE_PLAYING:Lcom/awox/jUPnPCP/UPnPPlayState;

    if-ne p1, v0, :cond_0

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/dlnamiddlelayer/AutoPlayJudge;->mDoPlayNextItem:Z

    .line 21
    :cond_0
    return-void
.end method
