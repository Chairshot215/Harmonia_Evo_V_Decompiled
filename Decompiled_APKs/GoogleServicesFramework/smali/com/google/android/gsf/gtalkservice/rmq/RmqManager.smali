.class public Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;
.super Ljava/lang/Object;
.source "RmqManager.java"


# instance fields
.field private mAckingInterval:I

.field private mNumPacketsReceivedSinceLastAck:I

.field private mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

.field private final mResendQueue:Ljava/util/LinkedList;

.field private mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

.field private mRmqAckLock:Ljava/lang/Object;

.field private mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;


# direct methods
.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->resendPackets()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 279
    const-string v0, "Rmq"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RmqMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method private processRmqAck(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 10
    .parameter "packet"

    .prologue
    const-wide/16 v8, -0x1

    .line 188
    instance-of v7, p1, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;

    if-eqz v7, :cond_2

    move-object v0, p1

    .line 189
    check-cast v0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;

    .line 190
    .local v0, ack:Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    .line 192
    .local v6, type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_1

    .line 194
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->getAckId()J

    move-result-wide v1

    .line 196
    .local v1, ackId:J
    cmp-long v7, v1, v8

    if-eqz v7, :cond_1

    .line 197
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GOT RmqAck "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 198
    :cond_0
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v7, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->removeMessagesUntil(J)V

    .line 222
    .end local v0           #ack:Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
    .end local v1           #ackId:J
    .end local v6           #type:Lorg/jivesoftware/smack/packet/IQ$Type;
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    instance-of v7, p1, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;

    if-eqz v7, :cond_1

    move-object v5, p1

    .line 202
    check-cast v5, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;

    .line 203
    .local v5, rmqLastReceived:Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v6

    .line 205
    .restart local v6       #type:Lorg/jivesoftware/smack/packet/IQ$Type;
    sget-object v7, Lorg/jivesoftware/smack/packet/IQ$Type;->SET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v6, v7, :cond_1

    .line 207
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/extensions/RmqLastIdReceived;->getLastId()J

    move-result-wide v3

    .line 209
    .local v3, lastRmqId:J
    cmp-long v7, v3, v8

    if-eqz v7, :cond_1

    .line 210
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GOT RmqLastIdReceived "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 212
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_1

    .line 214
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v7, v3, v4}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->removeMessagesUntil(J)V

    .line 217
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->resendRmqPackets()V

    goto :goto_0
.end method

.method private processRmqId(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 6
    .parameter "packet"

    .prologue
    .line 151
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getRmqId()J

    move-result-wide v1

    .line 153
    .local v1, rmqId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    instance-of v3, p1, Lorg/jivesoftware/smack/packet/IQ;

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 159
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processS2d: skipping error IQ packet with rmqId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processS2dMessage: rmq-id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 165
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->setLastReceivedRmqIdFromServer(J)V

    .line 169
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmqAckLock:Ljava/lang/Object;

    monitor-enter v4

    .line 170
    :try_start_0
    iget v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    .line 171
    iget v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->getAckingInterval()I

    move-result v5

    if-lt v3, v5, :cond_5

    .line 172
    const/4 v0, 0x1

    .line 173
    .local v0, needToSendAck:Z
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    .line 177
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rmqIdReceived: mNumPacketsReceivedSinceLastAck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mNumPacketsReceivedSinceLastAck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 183
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->sendRmqAck(J)V

    goto :goto_0

    .line 175
    .end local v0           #needToSendAck:Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #needToSendAck:Z
    goto :goto_1

    .line 177
    .end local v0           #needToSendAck:Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private resendPackets()V
    .locals 5

    .prologue
    .line 262
    :goto_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 264
    monitor-exit v2

    .line 276
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;

    .line 269
    .local v0, packet:Lorg/jivesoftware/smack/packet/Packet;
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v1, :cond_1

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resend packet "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->getRmqId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v1, v0}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 274
    monitor-exit v2

    goto :goto_0

    .end local v0           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resendRmqPackets()V
    .locals 8

    .prologue
    .line 225
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mRmq:Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;

    invoke-interface {v4}, Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;->getRmq1Packets()Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;

    move-result-object v2

    .line 226
    .local v2, list:Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->size()I

    move-result v0

    .line 229
    .local v0, count:I
    if-nez v0, :cond_1

    .line 230
    :try_start_0
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    const-string v4, "no rmq packets to resend"

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    .line 258
    :goto_0
    return-void

    .line 236
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 238
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->getPacketAt(I)Lorg/jivesoftware/smack/packet/Packet;

    move-result-object v3

    .line 240
    .local v3, packet:Lorg/jivesoftware/smack/packet/Packet;
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugRmq:Z

    if-eqz v4, :cond_2

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resendRmqPackets: add packet "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/Packet;->getRmqId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to queue"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->log(Ljava/lang/String;)V

    .line 243
    :cond_2
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mResendQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v3           #packet:Lorg/jivesoftware/smack/packet/Packet;
    :cond_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager$1;

    invoke-direct {v5, p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager$1;-><init>(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 256
    .end local v1           #i:I
    :catchall_1
    move-exception v4

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;->close()V

    throw v4
.end method

.method private sendRmqAck(J)V
    .locals 2
    .parameter "rmqIdToAck"

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;-><init>()V

    .line 98
    .local v0, ack:Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/extensions/RmqAck;->setAckId(J)V

    .line 99
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mPacketSender:Lcom/google/android/gsf/gtalkservice/PacketSender;

    invoke-interface {v1, v0}, Lcom/google/android/gsf/gtalkservice/PacketSender;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 100
    return-void
.end method

.method private setLastReceivedRmqIdFromServer(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mS2dIdStore:Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;->setLastReceivedRmqIdFromServer(J)V

    .line 94
    return-void
.end method


# virtual methods
.method public getAckingInterval()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->mAckingInterval:I

    return v0
.end method

.method public processS2dMessage(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 0
    .parameter "packet"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->processRmqId(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 147
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->processRmqAck(Lorg/jivesoftware/smack/packet/Packet;)V

    .line 148
    return-void
.end method
