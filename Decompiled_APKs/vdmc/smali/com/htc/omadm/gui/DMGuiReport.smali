.class public Lcom/htc/omadm/gui/DMGuiReport;
.super Lcom/htc/omadm/gui/SprintGuiPrototype;
.source "DMGuiReport.java"


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "callbackhandler"
    .parameter "tag"
    .parameter "sessionType"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/omadm/gui/SprintGuiPrototype;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/DMGuiReport;->DBG:Z

    .line 17
    const-string v0, "DMGuiReport"

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiReport;->LOG_TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public showConnecting()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public showError()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public showError(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->resetParameter()V

    .line 67
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setStatus(I)V

    .line 68
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setOption(I)V

    .line 69
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableBackKey(Z)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableSearchKey(Z)V

    .line 71
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->enableHFA()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setTitle(Ljava/lang/String;)V

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f05003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setMessage(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setButtonStyle(ILjava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->showNormalGUI()V

    .line 79
    return-void
.end method

.method public showFail()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->resetParameter()V

    .line 83
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setStatus(I)V

    .line 84
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setOption(I)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableBackKey(Z)V

    .line 86
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableSearchKey(Z)V

    .line 87
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->enableHFA()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setTitle(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050030

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setMessage(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setButtonStyle(ILjava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->showNormalGUI()V

    .line 95
    return-void
.end method

.method public showInstall(Ljava/lang/String;I)V
    .locals 0
    .parameter "description"
    .parameter "seconds"

    .prologue
    .line 99
    return-void
.end method

.method public showLowBattery()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public showOther(II)V
    .locals 0
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 104
    return-void
.end method

.method public showProgressBar(II)V
    .locals 0
    .parameter "currentSize"
    .parameter "maxSize"

    .prologue
    .line 102
    return-void
.end method

.method public showReady(Z)V
    .locals 3
    .parameter "disableTouchEvent"

    .prologue
    const/4 v2, 0x1

    .line 25
    sget-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOOBECase:Z

    if-eqz v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->resetParameter()V

    .line 29
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableBackKey(Z)V

    .line 30
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableSearchKey(Z)V

    .line 31
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setStatus(I)V

    .line 32
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setOption(I)V

    .line 33
    invoke-virtual {p0, p1}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableTouchEvent(Z)V

    .line 35
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->enableHFA()V

    .line 39
    :cond_1
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiReport;->setDialogStyle(I)V

    .line 40
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setTitle(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setMessage(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setButtonStyle(I)V

    .line 43
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->showNormalGUI()V

    goto :goto_0
.end method

.method public showReport()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public showSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 46
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->resetParameter()V

    .line 47
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setStatus(I)V

    .line 48
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setOption(I)V

    .line 49
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableBackKey(Z)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiReport;->setDisableSearchKey(Z)V

    .line 51
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->enableHFA()V

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setAutoFinishActivity(Z)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setTitle(Ljava/lang/String;)V

    .line 57
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setMessage(Ljava/lang/String;)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setButtonStyle(ILjava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiReport;->showNormalGUI()V

    .line 63
    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiReport;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
