.class public abstract Lcom/htc/omadm/gui/SprintGuiPrototype;
.super Lcom/htc/omadm/gui/ext/DMGui;
.source "SprintGuiPrototype.java"


# static fields
.field public static bTriggerDSS:Z

.field protected static mHiddenDialogType:I

.field protected static mOb1:Ljava/lang/Object;

.field protected static mOb2:Ljava/lang/Object;


# instance fields
.field private DBG:Z

.field private LOG_TAG:Ljava/lang/String;

.field protected mDisplayDialog:Z

.field private mFlag:Ljava/lang/String;

.field protected mSessionType:I

.field protected mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->bTriggerDSS:Z

    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mHiddenDialogType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "callbackhandler"
    .parameter "tag"
    .parameter "sessionType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/omadm/gui/ext/DMGui;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 15
    iput-boolean v1, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->DBG:Z

    .line 16
    const-string v0, "SprintGuiPrototype"

    iput-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->LOG_TAG:Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mFlag:Ljava/lang/String;

    .line 19
    iput-boolean v1, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    .line 20
    iput v1, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    .line 21
    iput-object v2, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mSessionType:I

    .line 32
    invoke-direct {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setFlag()V

    .line 34
    packed-switch p4, :pswitch_data_0

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05004c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    .line 60
    :goto_0
    return-void

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050042

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_3
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050046

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_4
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f05004a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setFlag()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "ro.hardware"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mFlag:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static showHiddenDialog(Lcom/htc/omadm/gui/SprintGuiPrototype;)V
    .locals 2
    .parameter "mDMGui"

    .prologue
    .line 85
    sget v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mHiddenDialogType:I

    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    const/4 v0, -0x1

    sput v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mHiddenDialogType:I

    .line 120
    return-void

    .line 87
    :pswitch_0
    sget-object v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mOb1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showReady(Z)V

    goto :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showSuccess()V

    goto :goto_0

    .line 93
    :pswitch_2
    sget-object v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mOb1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError()V

    goto :goto_0

    .line 99
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showFail()V

    goto :goto_0

    .line 102
    :pswitch_5
    sget-object v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mOb1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mOb2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showInstall(Ljava/lang/String;I)V

    goto :goto_0

    .line 105
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showReport()V

    goto :goto_0

    .line 108
    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showConnecting()V

    goto :goto_0

    .line 111
    :pswitch_8
    sget-object v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mOb1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mOb2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showProgressBar(II)V

    goto :goto_0

    .line 114
    :pswitch_9
    invoke-virtual {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showLowBattery()V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public enableHFA()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setAcquirePower(Z)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setDisableKeyGuard(Z)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setAutoReturnHomeScreen(Z)V

    .line 79
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/omadm/core/DeviceNotifyReceiver;->hasOOBE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setAutoResumeForegroundTime(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public getDisplayDialog()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    return v0
.end method

.method public setDisplayDialog(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mDisplayDialog:Z

    .line 73
    return-void
.end method

.method public abstract showConnecting()V
.end method

.method public abstract showError()V
.end method

.method public abstract showError(I)V
.end method

.method public abstract showFail()V
.end method

.method public abstract showInstall(Ljava/lang/String;I)V
.end method

.method public abstract showLowBattery()V
.end method

.method public abstract showOther(II)V
.end method

.method public showPhoneTypeError()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->resetParameter()V

    .line 137
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setAutoReturnHomeScreen(Z)V

    .line 138
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setDisableBackKey(Z)V

    .line 139
    invoke-virtual {p0, v2}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setDisableSearchKey(Z)V

    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setStatus(I)V

    .line 141
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setOption(I)V

    .line 143
    iget-object v0, p0, Lcom/htc/omadm/gui/SprintGuiPrototype;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setTitle(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setMessage(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/DMGui;->mContext:Landroid/content/Context;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->setButtonStyle(ILjava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showNormalGUI()V

    .line 148
    return-void
.end method

.method public abstract showProgressBar(II)V
.end method

.method public abstract showReady(Z)V
.end method

.method public abstract showReport()V
.end method

.method public abstract showSuccess()V
.end method
