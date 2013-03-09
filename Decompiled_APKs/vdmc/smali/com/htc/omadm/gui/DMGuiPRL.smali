.class public Lcom/htc/omadm/gui/DMGuiPRL;
.super Lcom/htc/omadm/gui/SprintGuiPrototype;
.source "DMGuiPRL.java"


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field private mFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "callbackhandler"
    .parameter "tag"
    .parameter "sessionType"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/omadm/gui/SprintGuiPrototype;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/DMGuiPRL;->DBG:Z

    .line 16
    const-string v0, "DMGuiPRL"

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiPRL;->LOG_TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiPRL;->mFlag:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->setFlag()V

    .line 24
    return-void
.end method

.method private setFlag()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "ro.hardware"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiPRL;->mFlag:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public showConnecting()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->resetParameter()V

    .line 63
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->enableHFA()V

    .line 66
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setStatus(I)V

    .line 67
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setOption(I)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableBackKey(Z)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableSearchKey(Z)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDialogStyle(I)V

    .line 72
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setTitle(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setMessage(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setButtonStyle(I)V

    .line 75
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->showNormalGUI()V

    .line 76
    return-void
.end method

.method public showError()V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public showError(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x2

    sput v0, Lcom/htc/omadm/gui/DMGuiPRL;->mHiddenDialogType:I

    .line 126
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/htc/omadm/gui/DMGuiPRL;->mOb1:Ljava/lang/Object;

    .line 144
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->resetParameter()V

    .line 130
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiPRL;->setAutoReturnHomeScreen(Z)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableBackKey(Z)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableSearchKey(Z)V

    .line 133
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->enableHFA()V

    .line 137
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setStatus(I)V

    .line 138
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setOption(I)V

    .line 140
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setTitle(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f050027

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

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setMessage(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setButtonStyle(ILjava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->showNormalGUI()V

    goto :goto_0
.end method

.method public showFail()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 147
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x4

    sput v0, Lcom/htc/omadm/gui/DMGuiPRL;->mHiddenDialogType:I

    .line 166
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->resetParameter()V

    .line 152
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setAutoReturnHomeScreen(Z)V

    .line 153
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableBackKey(Z)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableSearchKey(Z)V

    .line 155
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->enableHFA()V

    .line 159
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setStatus(I)V

    .line 160
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setOption(I)V

    .line 162
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setTitle(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050028

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setMessage(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setButtonStyle(ILjava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->showNormalGUI()V

    goto :goto_0
.end method

.method public showInstall(Ljava/lang/String;I)V
    .locals 0
    .parameter "description"
    .parameter "seconds"

    .prologue
    .line 187
    return-void
.end method

.method public showLowBattery()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public showOther(II)V
    .locals 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x1

    .line 168
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->resetParameter()V

    .line 169
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setAutoReturnHomeScreen(Z)V

    .line 170
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableBackKey(Z)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableSearchKey(Z)V

    .line 172
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setStatus(I)V

    .line 173
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setOption(I)V

    .line 175
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->enableHFA()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setTitle(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setMessage(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setButtonStyle(ILjava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->showNormalGUI()V

    .line 184
    return-void
.end method

.method public showProgressBar(II)V
    .locals 0
    .parameter "currentSize"
    .parameter "maxSize"

    .prologue
    .line 189
    return-void
.end method

.method public showReady(Z)V
    .locals 3
    .parameter "disableTouchEvent"

    .prologue
    const/4 v2, 0x1

    .line 31
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    sput v0, Lcom/htc/omadm/gui/DMGuiPRL;->mHiddenDialogType:I

    .line 33
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/htc/omadm/gui/DMGuiPRL;->mOb1:Ljava/lang/Object;

    .line 34
    iput-boolean v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->bBackground:Z

    .line 58
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->resetParameter()V

    .line 38
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableBackKey(Z)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableSearchKey(Z)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setAutoReturnHomeScreen(Z)V

    .line 41
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->enableHFA()V

    .line 44
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setStatus(I)V

    .line 45
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setOption(I)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableTouchEvent(Z)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDialogStyle(I)V

    .line 49
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setTitle(Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->bBackground:Z

    if-ne v0, v2, :cond_2

    .line 52
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setMessage(Ljava/lang/String;)V

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setButtonStyle(ILjava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->showNormalGUI()V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050025

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setMessage(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showReport()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public showSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, -0x1

    sput v0, Lcom/htc/omadm/gui/DMGuiPRL;->mHiddenDialogType:I

    .line 100
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->getSingleton()Lcom/htc/omadm/rule/DMSession;

    move-result-object v0

    sget v1, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS:I

    invoke-virtual {v0, v1}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 121
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->resetParameter()V

    .line 104
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setAutoReturnHomeScreen(Z)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableBackKey(Z)V

    .line 106
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiPRL;->setDisableSearchKey(Z)V

    .line 107
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->enableHFA()V

    .line 109
    sget-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_FUMO:Z

    if-eqz v0, :cond_1

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setAutoFinishActivity(Z)V

    .line 114
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setStatus(I)V

    .line 115
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setOption(I)V

    .line 117
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setTitle(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050029

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setMessage(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiPRL;->setButtonStyle(ILjava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiPRL;->showNormalGUI()V

    goto :goto_0
.end method
