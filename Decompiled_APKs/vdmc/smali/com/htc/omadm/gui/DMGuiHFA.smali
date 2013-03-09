.class public Lcom/htc/omadm/gui/DMGuiHFA;
.super Lcom/htc/omadm/gui/SprintGuiPrototype;
.source "DMGuiHFA.java"


# static fields
.field public static mRETRY_TIME:I


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/htc/omadm/gui/DMGuiHFA;->mRETRY_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "callbackhandler"
    .parameter "tag"
    .parameter "sessionType"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/omadm/gui/SprintGuiPrototype;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/DMGuiHFA;->DBG:Z

    .line 21
    const-string v0, "DMGuiHFA"

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiHFA;->LOG_TAG:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public showConnecting()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->resetParameter()V

    .line 52
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiHFA;->setStatus(I)V

    .line 53
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setOption(I)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableBackKey(Z)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableSearchKey(Z)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/htc/omadm/gui/DMGuiHFA;->setDialogStyle(I)V

    .line 58
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setTitle(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setMessage(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setButtonStyle(I)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->showNormalGUI()V

    .line 62
    return-void
.end method

.method public showError()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public showError(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->resetParameter()V

    .line 84
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiHFA;->setStatus(I)V

    .line 85
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setOption(I)V

    .line 86
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableBackKey(Z)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableSearchKey(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->enableHFA()V

    .line 90
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setTitle(Ljava/lang/String;)V

    .line 91
    sget-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->IS_VM_PROJECT:Z

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f05000c

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

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setMessage(Ljava/lang/String;)V

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setButtonStyle(ILjava/lang/String;)V

    .line 97
    const/16 v0, 0x197

    if-ne p1, v0, :cond_0

    .line 98
    sput-boolean v3, Lcom/htc/omadm/gui/DMGuiHFA;->bTriggerDSS:Z

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->showNormalGUI()V

    .line 100
    return-void

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v2, 0x7f05000b

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

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showFail()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public showInstall(Ljava/lang/String;I)V
    .locals 0
    .parameter "description"
    .parameter "seconds"

    .prologue
    .line 158
    return-void
.end method

.method public showLowBattery()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public showOther(II)V
    .locals 8
    .parameter "countdown"
    .parameter "retry"

    .prologue
    const v7, 0x7f050057

    const/4 v6, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->resetParameter()V

    .line 105
    invoke-virtual {p0, v6}, Lcom/htc/omadm/gui/DMGuiHFA;->setStatus(I)V

    .line 106
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiHFA;->setOption(I)V

    .line 107
    invoke-virtual {p0, v6}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableBackKey(Z)V

    .line 108
    invoke-virtual {p0, v6}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableSearchKey(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->enableHFA()V

    .line 111
    const-string v2, ""

    .line 112
    .local v2, str_carrier:Ljava/lang/String;
    sget-boolean v3, Lcom/htc/omadm/prop/PropertyFeature;->IS_BOOST_PROJECT:Z

    if-eqz v3, :cond_0

    .line 113
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v4, 0x7f050016

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v5, 0x7f050011

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v5, 0x7f050012

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, str_1:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v5, 0x7f050013

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, str_2:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/htc/omadm/gui/DMGuiHFA;->setDialogStyle(I)V

    .line 141
    iget-object v3, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/omadm/gui/DMGuiHFA;->setTitle(Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/htc/omadm/gui/DMGuiHFA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showOther:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, p1, v0, v1}, Lcom/htc/omadm/gui/DMGuiHFA;->setDialogMessageChangeTime(ILjava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-boolean v3, Lcom/htc/omadm/prop/PropertyFeature;->IS_VM_PROJECT:Z

    if-eqz v3, :cond_4

    .line 146
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/htc/omadm/gui/DMGuiHFA;->setButtonStyle(ILjava/lang/String;)V

    .line 151
    :goto_1
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->showNormalGUI()V

    .line 153
    return-void

    .line 114
    .end local v0           #str_1:Ljava/lang/String;
    .end local v1           #str_2:Ljava/lang/String;
    :cond_0
    sget-boolean v3, Lcom/htc/omadm/prop/PropertyFeature;->IS_VM_PROJECT:Z

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v4, 0x7f050017

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 116
    :cond_1
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/htc/omadm/prop/PropertyFeature;->IS_EXPRESS_DEVICE:Z

    if-eqz v3, :cond_3

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v4, 0x7f050015

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 119
    :cond_3
    iget-object v3, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v4, 0x7f050014

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 148
    .restart local v0       #str_1:Ljava/lang/String;
    .restart local v1       #str_2:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v5, 0x7f05004d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/htc/omadm/gui/DMGuiHFA;->setButtonStyle(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showProgressBar(II)V
    .locals 0
    .parameter "currentSize"
    .parameter "maxSize"

    .prologue
    .line 160
    return-void
.end method

.method public showReady(Z)V
    .locals 3
    .parameter "disableTouchEvent"

    .prologue
    const/4 v2, 0x1

    .line 29
    sget-boolean v0, Lcom/htc/omadm/gui/ext/BaseDialog;->mOOBECase:Z

    if-eqz v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->resetParameter()V

    .line 33
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableBackKey(Z)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableSearchKey(Z)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiHFA;->setAutoReturnHomeScreen(Z)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiHFA;->setStatus(I)V

    .line 37
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setOption(I)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableTouchEvent(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->enableHFA()V

    .line 42
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiHFA;->setDialogStyle(I)V

    .line 43
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setTitle(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setMessage(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050057

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setButtonStyle(ILjava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->showNormalGUI()V

    goto :goto_0
.end method

.method public showReport()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public showSuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->resetParameter()V

    .line 65
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiHFA;->setStatus(I)V

    .line 66
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setOption(I)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableBackKey(Z)V

    .line 68
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/DMGuiHFA;->setDisableSearchKey(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->enableHFA()V

    .line 70
    sget-boolean v0, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_FUMO:Z

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setAutoFinishActivity(Z)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setTitle(Ljava/lang/String;)V

    .line 74
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v0, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setMessage(Ljava/lang/String;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setButtonStyle(ILjava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/htc/omadm/gui/DMGuiHFA;->showNormalGUI()V

    .line 80
    return-void

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/DMGuiHFA;->setMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
