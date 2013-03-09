.class public Lcom/htc/omadm/gui/DMGuiDC;
.super Lcom/htc/omadm/gui/SprintGuiPrototype;
.source "DMGuiDC.java"


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

    iput-boolean v0, p0, Lcom/htc/omadm/gui/DMGuiDC;->DBG:Z

    .line 17
    const-string v0, "DMGuiDC"

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiDC;->LOG_TAG:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public showConnecting()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->resetParameter()V

    .line 52
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setStatus(I)V

    .line 53
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setOption(I)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableBackKey(Z)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableSearchKey(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiDC;->setDialogStyle(I)V

    .line 58
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setTitle(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05001d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setMessage(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setButtonStyle(I)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->showNormalGUI()V

    .line 62
    return-void
.end method

.method public showError()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public showError(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x1

    .line 86
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x2

    sput v0, Lcom/htc/omadm/gui/DMGuiDC;->mHiddenDialogType:I

    .line 88
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/htc/omadm/gui/DMGuiDC;->mOb1:Ljava/lang/Object;

    .line 105
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->resetParameter()V

    .line 93
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setStatus(I)V

    .line 94
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setOption(I)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableBackKey(Z)V

    .line 96
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableSearchKey(Z)V

    .line 97
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setTitle(Ljava/lang/String;)V

    .line 98
    sget-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->IS_VM_PROJECT:Z

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f050020

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

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setMessage(Ljava/lang/String;)V

    .line 103
    :goto_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setButtonStyle(ILjava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->showNormalGUI()V

    goto :goto_0

    .line 101
    :cond_1
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

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showFail()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 108
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    if-nez v0, :cond_0

    .line 109
    sput v1, Lcom/htc/omadm/gui/DMGuiDC;->mHiddenDialogType:I

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->resetParameter()V

    .line 114
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiDC;->setStatus(I)V

    .line 115
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setOption(I)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableBackKey(Z)V

    .line 117
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableSearchKey(Z)V

    .line 118
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setTitle(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05001e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setMessage(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setButtonStyle(ILjava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->showNormalGUI()V

    goto :goto_0
.end method

.method public showInstall(Ljava/lang/String;I)V
    .locals 0
    .parameter "description"
    .parameter "seconds"

    .prologue
    .line 138
    return-void
.end method

.method public showLowBattery()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public showOther(II)V
    .locals 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x1

    .line 124
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->resetParameter()V

    .line 126
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setStatus(I)V

    .line 127
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setOption(I)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableBackKey(Z)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableSearchKey(Z)V

    .line 130
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setTitle(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setMessage(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setButtonStyle(ILjava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->showNormalGUI()V

    .line 135
    return-void
.end method

.method public showProgressBar(II)V
    .locals 0
    .parameter "currentSize"
    .parameter "maxSize"

    .prologue
    .line 140
    return-void
.end method

.method public showReady(Z)V
    .locals 4
    .parameter "disableTouchEvent"

    .prologue
    const/4 v3, 0x1

    .line 26
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/htc/omadm/gui/DMGuiDC;->mHiddenDialogType:I

    .line 28
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/htc/omadm/gui/DMGuiDC;->mOb1:Ljava/lang/Object;

    .line 48
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiDC;->LOG_TAG:Ljava/lang/String;

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

    .line 33
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->resetParameter()V

    .line 34
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setStatus(I)V

    .line 35
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setOption(I)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableTouchEvent(Z)V

    .line 37
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableBackKey(Z)V

    .line 38
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableSearchKey(Z)V

    .line 39
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 40
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiDC;->setAutoReturnHomeScreen(Z)V

    .line 42
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiDC;->setDialogStyle(I)V

    .line 44
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setTitle(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setMessage(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setButtonStyle(ILjava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->showNormalGUI()V

    goto :goto_0
.end method

.method public showReport()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public showSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/htc/omadm/gui/DMGuiDC;->mHiddenDialogType:I

    .line 68
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->getSingleton()Lcom/htc/omadm/rule/DMSession;

    move-result-object v0

    sget v1, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS:I

    invoke-virtual {v0, v1}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 83
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/DMGuiDC;->LOG_TAG:Ljava/lang/String;

    const-string v1, "showSuccess()"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->resetParameter()V

    .line 74
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setStatus(I)V

    .line 75
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setOption(I)V

    .line 76
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiDC;->setAutoReturnHomeScreen(Z)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableBackKey(Z)V

    .line 78
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiDC;->setDisableSearchKey(Z)V

    .line 79
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setTitle(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050021

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setMessage(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiDC;->setButtonStyle(ILjava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiDC;->showNormalGUI()V

    goto :goto_0
.end method
