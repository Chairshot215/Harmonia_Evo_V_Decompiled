.class Lcom/redbend/vdmc/HandleNIAMsg;
.super Ljava/lang/Object;
.source "HandleNIAMsg.java"

# interfaces
.implements Lcom/redbend/vdm/NIAMsgHandler;
.implements Lcom/redbend/vdm/SessionInitiator;


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "HandleNIAMsg"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "HandleNIAMsg"

    return-object v0
.end method

.method public notify(Lcom/redbend/vdm/NIAMsgHandler$UIMode;S[BLcom/redbend/vdm/SessionInitiator;)V
    .locals 4
    .parameter "uiMode"
    .parameter "dmVersion"
    .parameter "vendorSpecificData"
    .parameter "initiator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 15
    if-nez p4, :cond_0

    .line 16
    const-string v1, "HandleNIAMsg"

    const-string v2, "vDM Client HandleNIAMsg::notify:NULL"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmEngine;->getCurrentAccount()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, account:Ljava/lang/String;
    const-string v1, "HandleNIAMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vDM Client account = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmEngine;->notifyNIASessionProceed()V

    .line 26
    return-void

    .line 18
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    const-string v1, "HandleNIAMsg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vDM Client HandleNIAMsg::notify:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
