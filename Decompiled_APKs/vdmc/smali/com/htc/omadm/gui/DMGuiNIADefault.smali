.class public Lcom/htc/omadm/gui/DMGuiNIADefault;
.super Lcom/htc/omadm/gui/SprintGuiPrototype;
.source "DMGuiNIADefault.java"


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
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/omadm/gui/SprintGuiPrototype;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->DBG:Z

    .line 16
    const-string v0, "DMGuiNIADefault"

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private setStatus()V
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 89
    :pswitch_0
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setStatus(I)V

    goto :goto_0

    .line 92
    :pswitch_1
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setStatus(I)V

    goto :goto_0

    .line 95
    :pswitch_2
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setStatus(I)V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public showConnecting()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showConnecting not support!"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showError()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showError not support!"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showError(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x1

    .line 55
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->resetParameter()V

    .line 57
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setStatus(I)V

    .line 58
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setOption(I)V

    .line 59
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableBackKey(Z)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableSearchKey(Z)V

    .line 61
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setTitle(Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f05001f

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

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setMessage(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setButtonStyle(ILjava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->showNormalGUI()V

    .line 65
    return-void
.end method

.method public showFail()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 67
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showFail "

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->resetParameter()V

    .line 69
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setStatus(I)V

    .line 70
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setOption(I)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableBackKey(Z)V

    .line 72
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableSearchKey(Z)V

    .line 73
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setTitle(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setMessage(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setButtonStyle(ILjava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->showNormalGUI()V

    .line 77
    return-void
.end method

.method public showInstall(Ljava/lang/String;I)V
    .locals 2
    .parameter "description"
    .parameter "seconds"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showInstall not support!"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showLowBattery()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showLowBattery not support!"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showOther(II)V
    .locals 2
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showSuccess not support!"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showProgressBar(II)V
    .locals 2
    .parameter "currentSize"
    .parameter "maxSize"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showProgressBar not support!"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showReady(Z)V
    .locals 4
    .parameter "disableTouchEvent"

    .prologue
    const/4 v3, 0x1

    .line 24
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->resetParameter()V

    .line 26
    invoke-direct {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setStatus()V

    .line 27
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setOption(I)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableTouchEvent(Z)V

    .line 29
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableBackKey(Z)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableSearchKey(Z)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setAutoReturnHomeScreen(Z)V

    .line 34
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDialogStyle(I)V

    .line 36
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setTitle(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050019

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setMessage(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setButtonStyle(ILjava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->showNormalGUI()V

    .line 40
    return-void
.end method

.method public showReport()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showReport not support!"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 42
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiNIADefault;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showSuccess()"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->resetParameter()V

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setStatus(I)V

    .line 45
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setOption(I)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setAutoReturnHomeScreen(Z)V

    .line 47
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableBackKey(Z)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setDisableSearchKey(Z)V

    .line 49
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setTitle(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setMessage(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->setButtonStyle(ILjava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiNIADefault;->showNormalGUI()V

    .line 53
    return-void
.end method
