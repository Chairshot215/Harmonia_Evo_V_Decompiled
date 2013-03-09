.class public Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;
.super Ljava/lang/Object;
.source "UPnPStackControlMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$1;,
        Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;
    }
.end annotation


# instance fields
.field private cmdHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackNotify:Lcom/htc/dlnamiddlelayer/IUPnPErrorNotify;

.field private mStack:Lcom/awox/jUPnPCP/UPnPStack;

.field private msgNotifyThread:Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;

.field private sClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/IUPnPErrorNotify;)V
    .locals 4
    .parameter "aCallbackNotify"

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "UPnPStackControlMgr"

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    .line 26
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->msgNotifyThread:Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;

    .line 27
    iput-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IUPnPErrorNotify;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->cmdHandlerList:Ljava/util/ArrayList;

    .line 35
    const-string v0, "jUPnPCP"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/awox/jUPnPCP/UPnPStack;

    invoke-direct {v0}, Lcom/awox/jUPnPCP/UPnPStack;-><init>()V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    .line 38
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mCallbackNotify:Lcom/htc/dlnamiddlelayer/IUPnPErrorNotify;

    .line 40
    new-instance v0, Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;

    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    new-instance v2, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;

    invoke-direct {v2, p0, v3}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$HandlerUPnPMsg;-><init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr$1;)V

    invoke-direct {v0, v1, v2}, Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;-><init>(Lcom/awox/jUPnPCP/UPnPStack;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->msgNotifyThread:Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)Lcom/awox/jUPnPCP/UPnPStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;Lcom/awox/jUPnPCP/UPnPCommand;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->handleCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    return-void
.end method

.method private handleCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V
    .locals 7
    .parameter "aCommand"

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 173
    .local v0, bHandledCommand:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->cmdHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 175
    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->cmdHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;

    invoke-interface {v3, p1}, Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;->onHandleCommand(Lcom/awox/jUPnPCP/UPnPCommand;)Z

    move-result v0

    .line 176
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 180
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getMError()I

    move-result v2

    .line 183
    .local v2, nError:I
    sget v3, Lcom/awox/jUPnPCP/jUPnPCPConstants;->kUPnPError_None:I

    if-eq v2, v3, :cond_1

    .line 185
    const-string v3, "DLNAMiddlelayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnHandled Command Error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CommandID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/awox/jUPnPCP/UPnPCommand;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v2           #nError:I
    :cond_1
    return-void

    .line 173
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getStack()Lcom/awox/jUPnPCP/UPnPStack;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    return-object v0
.end method

.method public reSearchDevices()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->searchDevices()V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": stack is not running for search devices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerCommandHandler(Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;)V
    .locals 4
    .parameter "aCmdHandler"

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 115
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": CmdHandler to register is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->cmdHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 118
    .local v0, index:I
    if-gez v0, :cond_1

    .line 120
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->cmdHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": registerCommandHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    return-void
.end method

.method public startStack()V
    .locals 3

    .prologue
    .line 56
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "start Stack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v0}, Lcom/awox/jUPnPCP/UPnPStack;->start()V

    .line 60
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->msgNotifyThread:Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;

    invoke-virtual {v0}, Lcom/htc/dlnamiddlelayer/UPnPStackMsgNotifyThread;->start()V

    .line 61
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": stack is starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v0, "DLNAMiddlelayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": stack is already running."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopStack()V
    .locals 4

    .prologue
    .line 85
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->getCommandToHandleOnStop()Lcom/awox/jUPnPCP/UPnPCommand;

    move-result-object v0

    .line 93
    .local v0, theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1, v0}, Lcom/awox/jUPnPCP/UPnPStack;->handledCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V

    .line 98
    :cond_1
    if-nez v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->mStack:Lcom/awox/jUPnPCP/UPnPStack;

    invoke-virtual {v1}, Lcom/awox/jUPnPCP/UPnPStack;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": stack is stop"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0           #theCommand:Lcom/awox/jUPnPCP/UPnPCommand;
    :cond_2
    :goto_0
    return-void

    .line 107
    :cond_3
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": stack is not running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unRegisterCommandHandler(Lcom/htc/dlnamiddlelayer/IHandleUPnPCommand;)V
    .locals 4
    .parameter "aCmdHandler"

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 129
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": CmdHandler to unregister is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->cmdHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 134
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->cmdHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 137
    const-string v1, "DLNAMiddlelayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->sClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unRegisterCommandHandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
