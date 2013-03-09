.class public Lcom/google/android/gsf/gtalkservice/IQPacketManager;
.super Ljava/lang/Object;
.source "IQPacketManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# instance fields
.field private mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

.field private mHandlersMap:Ljava/util/HashMap;

.field private mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/Endpoint;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    .line 42
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 43
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 110
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IQPacketMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    .line 47
    new-instance v1, Lorg/jivesoftware/smack/filter/AndFilter;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/IQPacketManager$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/IQPacketManager;)V

    invoke-direct {v1, v0, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 54
    new-instance v0, Lorg/jivesoftware/smack/filter/AndFilter;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/AndFilter;-><init>(Lorg/jivesoftware/smack/filter/PacketFilter;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 56
    invoke-virtual {p1, p0, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    .line 57
    return-void
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 5
    .parameter "packet"

    .prologue
    .line 90
    move-object v2, p1

    check-cast v2, Lorg/jivesoftware/smack/packet/IQ;

    .line 91
    .local v2, iq:Lorg/jivesoftware/smack/packet/IQ;
    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 96
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/IQPacketHandler;

    .line 97
    .local v0, handler:Lcom/google/android/gsf/gtalkservice/IQPacketHandler;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got packet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->log(Ljava/lang/String;)V

    .line 101
    :cond_0
    invoke-interface {v0, v2}, Lcom/google/android/gsf/gtalkservice/IQPacketHandler;->handlePacket(Lorg/jivesoftware/smack/packet/IQ;)V

    .line 103
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 104
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    :cond_1
    return-void

    .line 97
    .end local v0           #handler:Lcom/google/android/gsf/gtalkservice/IQPacketHandler;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 105
    .restart local v0       #handler:Lcom/google/android/gsf/gtalkservice/IQPacketHandler;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z
    .locals 1
    .parameter "packet"
    .parameter "handler"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z

    move-result v0

    return v0
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;Z)Z
    .locals 4
    .parameter "packet"
    .parameter "handler"
    .parameter "storeInRmq"

    .prologue
    .line 66
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Endpoint;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lorg/jivesoftware/smack/packet/IQ;->setAccountId(J)V

    .line 68
    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, id:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mHandlersMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->log(Ljava/lang/String;)V

    .line 78
    .end local v0           #id:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    .line 80
    .local v1, retVal:Z
    if-eqz p3, :cond_1

    .line 81
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->send(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 86
    :goto_0
    return v1

    .line 73
    .end local v1           #retVal:Z
    .restart local v0       #id:Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 83
    .end local v0           #id:Ljava/lang/String;
    .restart local v1       #retVal:Z
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->mEndpoint:Lcom/google/android/gsf/gtalkservice/Endpoint;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/Endpoint;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v1

    goto :goto_0
.end method
