.class public Lcom/redbend/vdmc/HandleSession;
.super Ljava/lang/Object;
.source "HandleSession.java"

# interfaces
.implements Lcom/redbend/vdm/SessionStateObserver;


# instance fields
.field private mMsgHandler:Lcom/htc/ipl/MsgHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notify(Lcom/redbend/vdm/SessionStateObserver$SessionType;Lcom/redbend/vdm/SessionStateObserver$SessionState;ILcom/redbend/vdm/SessionInitiator;)V
    .locals 7
    .parameter "type"
    .parameter "state"
    .parameter "lastError"
    .parameter "initiator"

    .prologue
    .line 40
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandleSession: ssc notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/redbend/vdm/SessionStateObserver$SessionType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/redbend/vdm/SessionStateObserver$SessionState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " initiator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, s:Ljava/lang/String;
    if-nez p4, :cond_1

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_0
    const-string v2, "vDMC"

    invoke-static {v2, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/redbend/vdmc/HandleSession;->sendMessage(Lcom/redbend/vdm/SessionStateObserver$SessionType;Lcom/redbend/vdm/SessionStateObserver$SessionState;)V

    .line 51
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HandleBootStrap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/redbend/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v2, :cond_0

    .line 53
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v2

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/redbend/vdm/VdmEngine;->getCurrentAccount()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/redbend/vdm/VdmEngine;->triggerDMSession(Ljava/lang/String;Ljava/lang/String;[BLcom/redbend/vdm/SessionInitiator;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_1
    return-void

    .line 46
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p4}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "vDMC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VdmEngine exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sendMessage(Lcom/redbend/vdm/SessionStateObserver$SessionType;Lcom/redbend/vdm/SessionStateObserver$SessionState;)V
    .locals 2
    .parameter "type"
    .parameter "state"

    .prologue
    .line 16
    invoke-static {}, Lcom/htc/ipl/MsgHandler;->getInstance()Lcom/htc/ipl/MsgHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/redbend/vdmc/HandleSession;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    .line 17
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 18
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DL:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    if-ne p1, v1, :cond_3

    .line 19
    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v1, :cond_1

    .line 20
    iget-object v1, p0, Lcom/redbend/vdmc/HandleSession;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 35
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/redbend/vdmc/HandleSession;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    invoke-virtual {v1, v0}, Lcom/htc/ipl/MsgHandler;->sendMessage(Landroid/os/Message;)Z

    .line 36
    return-void

    .line 21
    :cond_1
    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v1, :cond_2

    .line 22
    iget-object v1, p0, Lcom/redbend/vdmc/HandleSession;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 23
    :cond_2
    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/redbend/vdmc/HandleSession;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 26
    :cond_3
    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DM:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    if-ne p1, v1, :cond_0

    .line 27
    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v1, :cond_4

    .line 28
    iget-object v1, p0, Lcom/redbend/vdmc/HandleSession;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 29
    :cond_4
    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v1, :cond_5

    .line 30
    iget-object v1, p0, Lcom/redbend/vdmc/HandleSession;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 31
    :cond_5
    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/redbend/vdmc/HandleSession;->mMsgHandler:Lcom/htc/ipl/MsgHandler;

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
