.class public Lcom/htc/omadm/gui/DMGuiLAWMO;
.super Lcom/htc/omadm/gui/SprintGuiPrototype;
.source "DMGuiLAWMO.java"


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
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/omadm/gui/SprintGuiPrototype;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/omadm/gui/DMGuiLAWMO;->DBG:Z

    .line 15
    const-string v0, "DMGuiLAWMO"

    iput-object v0, p0, Lcom/htc/omadm/gui/DMGuiLAWMO;->LOG_TAG:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public showConnecting()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public showError()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public showError(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 24
    return-void
.end method

.method public showFail()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public showInstall(Ljava/lang/String;I)V
    .locals 0
    .parameter "description"
    .parameter "seconds"

    .prologue
    .line 27
    return-void
.end method

.method public showLowBattery()V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public showOther(II)V
    .locals 0
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 32
    return-void
.end method

.method public showProgressBar(II)V
    .locals 0
    .parameter "currentSize"
    .parameter "maxSize"

    .prologue
    .line 30
    return-void
.end method

.method public showReady(Z)V
    .locals 0
    .parameter "disableTouchEvent"

    .prologue
    .line 22
    return-void
.end method

.method public showReport()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public showSuccess()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method
