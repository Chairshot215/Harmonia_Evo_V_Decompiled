.class public Lcom/htc/omadm/gui/DMGuiFUMO;
.super Lcom/htc/omadm/gui/SprintGuiPrototype;
.source "DMGuiFUMO.java"


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
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/omadm/gui/SprintGuiPrototype;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/DMGuiFUMO;->DBG:Z

    .line 20
    const-string v0, "DMGuiFUMO"

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiFUMO;->LOG_TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiFUMO;->mFlag:Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setFlag()V

    .line 28
    return-void
.end method

.method private setFlag()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "ro.hardware"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiFUMO;->mFlag:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public showConnecting()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 180
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 181
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 182
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 183
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 184
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 186
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(I)V

    .line 193
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 194
    return-void
.end method

.method public showError()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 82
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 83
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 86
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 87
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 89
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(ILjava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 98
    return-void
.end method

.method public showError(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 63
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 65
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 66
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 67
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 69
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f05003c

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

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(ILjava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 79
    return-void
.end method

.method public showFail()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->informProgressBarClose()V

    .line 102
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 103
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 104
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 106
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 107
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 109
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(ILjava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 118
    return-void
.end method

.method public showInstall(Ljava/lang/String;I)V
    .locals 5
    .parameter "description"
    .parameter "seconds"

    .prologue
    const/4 v1, 0x1

    .line 121
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->informProgressBarClose()V

    .line 122
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 123
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 126
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 127
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 129
    iget v1, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v3, 0x7f050033

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->getSingleton()Lcom/htc/omadm/libdo/system/PhoneInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Model_ID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v3, 0x7f050034

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lez p2, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v4, 0x7f050035

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v4, 0x7f050036

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v1, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x21

    if-ne v1, v3, :cond_4

    :cond_1
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v3, 0x7f050038

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDescription(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v3, 0x7f050056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v4, 0x7f050057

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 155
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v0

    .line 156
    .local v0, st:Lcom/htc/omadm/util/Setting;
    invoke-virtual {v0, p1}, Lcom/htc/omadm/util/Setting;->Set_FumoDesc(Ljava/lang/String;)V

    .line 157
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/omadm/util/Setting;->Set_FumoDescTime(Ljava/lang/String;)V

    .line 158
    return-void

    .line 135
    .end local v0           #st:Lcom/htc/omadm/util/Setting;
    :cond_2
    const-string v1, ""

    goto/16 :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v3, 0x7f050037

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2
.end method

.method public showLowBattery()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 223
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 224
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 225
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 226
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 227
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 228
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 230
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 235
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050032

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(ILjava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 242
    return-void

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050031

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showOther(II)V
    .locals 3
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x1

    .line 245
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 246
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 247
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 248
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 249
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 250
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 252
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(ILjava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 261
    return-void
.end method

.method public showProgressBar(II)V
    .locals 4
    .parameter "currentSize"
    .parameter "maxSize"

    .prologue
    const/4 v3, 0x1

    .line 197
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->informNormalGUIClose()V

    .line 198
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 199
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 200
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 201
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 202
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDialogStyle(I)V

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableTouchEvent(Z)V

    .line 204
    invoke-virtual {p0, p2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setProgressBarMaxSize(I)V

    .line 206
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 210
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 211
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 213
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f050041

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f05004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(ILjava/lang/String;)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/htc/omadm/gui/DMGuiFUMO;->showProgressBar(I)V

    .line 220
    return-void
.end method

.method public showReady()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public showReady(Z)V
    .locals 3
    .parameter "disableTouchEvent"

    .prologue
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 36
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 37
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 39
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 40
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 42
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableTouchEvent(Z)V

    .line 46
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDialogStyle(I)V

    .line 47
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05002a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(ILjava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 59
    return-void
.end method

.method public showReport()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->resetParameter()V

    .line 162
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setAutoReturnHomeScreen(Z)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableBackKey(Z)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setDisableSearchKey(Z)V

    .line 165
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setStatus(I)V

    .line 166
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setOption(I)V

    .line 168
    iget v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->enableHFA()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setTitle(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setMessage(Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiFUMO;->setButtonStyle(I)V

    .line 175
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiFUMO;->showNormalGUI()V

    .line 176
    return-void
.end method

.method public showSuccess()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method
