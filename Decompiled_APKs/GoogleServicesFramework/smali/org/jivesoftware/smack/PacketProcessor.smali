.class public Lorg/jivesoftware/smack/PacketProcessor;
.super Ljava/lang/Object;
.source "PacketProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;
    }
.end annotation


# instance fields
.field private done:Z

.field private mExceededHighwaterMark:Z

.field private processThread:Ljava/lang/Thread;

.field private final queue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->done:Z

    .line 20
    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->mExceededHighwaterMark:Z

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lorg/jivesoftware/smack/PacketProcessor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketProcessor;->process()V

    return-void
.end method

.method private checkMaxPacketsQueued()V
    .locals 6

    .prologue
    const/16 v5, 0x1400

    .line 54
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 56
    .local v1, size:I
    if-ne v1, v5, :cond_1

    .line 57
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;

    .line 58
    .local v0, packetUnit:Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;
    const-string v2, "Smack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PacketProcessor] drop packet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;->packet:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", queue size exceeded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 73
    .end local v0           #packetUnit:Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const/16 v2, 0xf00

    if-lt v1, v2, :cond_2

    .line 62
    iget-boolean v2, p0, Lorg/jivesoftware/smack/PacketProcessor;->mExceededHighwaterMark:Z

    if-nez v2, :cond_0

    .line 63
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jivesoftware/smack/PacketProcessor;->mExceededHighwaterMark:Z

    .line 64
    const/16 v2, 0xd

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 65
    const-string v2, "Smack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[PacketProcessor] queue exceeded highwater mark "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_2
    iget-boolean v2, p0, Lorg/jivesoftware/smack/PacketProcessor;->mExceededHighwaterMark:Z

    if-eqz v2, :cond_0

    .line 68
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jivesoftware/smack/PacketProcessor;->mExceededHighwaterMark:Z

    .line 69
    const/16 v2, 0xe

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 70
    const-string v2, "queue is now below highwater mark"

    invoke-direct {p0, v2}, Lorg/jivesoftware/smack/PacketProcessor;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 138
    const-string v0, "Smack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PacketProcessor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method private nextPacket()Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->done:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :try_start_1
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    const/4 v0, 0x0

    monitor-exit v1

    .line 96
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;

    monitor-exit v1

    goto :goto_1

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 89
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private process()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 101
    const-string v3, "Smack"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const-string v3, "start thread"

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketProcessor;->log(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lorg/jivesoftware/smack/PacketProcessor;->done:Z

    if-nez v3, :cond_2

    .line 107
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketProcessor;->nextPacket()Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;

    move-result-object v2

    .line 109
    .local v2, packetUnit:Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;
    if-eqz v2, :cond_0

    .line 113
    iget-object v1, v2, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;->packet:Lorg/jivesoftware/smack/packet/Packet;

    .line 114
    .local v1, packet:Lorg/jivesoftware/smack/packet/Packet;
    iget-object v0, v2, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;->packetListener:Lorg/jivesoftware/smack/PacketListener;

    .line 116
    .local v0, listener:Lorg/jivesoftware/smack/PacketListener;
    const-string v3, "Smack"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listener="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketProcessor;->log(Ljava/lang/String;)V

    .line 122
    :cond_1
    invoke-interface {v0, v1}, Lorg/jivesoftware/smack/PacketListener;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    .line 125
    .end local v0           #listener:Lorg/jivesoftware/smack/PacketListener;
    .end local v1           #packet:Lorg/jivesoftware/smack/packet/Packet;
    .end local v2           #packetUnit:Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;
    :cond_2
    const-string v3, "Smack"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    const-string v3, "exit thread"

    invoke-direct {p0, v3}, Lorg/jivesoftware/smack/PacketProcessor;->log(Ljava/lang/String;)V

    .line 128
    :cond_3
    return-void
.end method


# virtual methods
.method public queuePacket(Lorg/jivesoftware/smack/packet/Packet;Lorg/jivesoftware/smack/PacketListener;)V
    .locals 3
    .parameter "packet"
    .parameter "packetListener"

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->done:Z

    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 77
    :try_start_0
    invoke-direct {p0}, Lorg/jivesoftware/smack/PacketProcessor;->checkMaxPacketsQueued()V

    .line 78
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    new-instance v2, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;

    invoke-direct {v2, p1, p2}, Lorg/jivesoftware/smack/PacketProcessor$PacketUnit;-><init>(Lorg/jivesoftware/smack/packet/Packet;Lorg/jivesoftware/smack/PacketListener;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 80
    monitor-exit v1

    .line 82
    :cond_0
    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->done:Z

    .line 132
    iget-object v1, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->processThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "thread already started"

    invoke-direct {p0, v0}, Lorg/jivesoftware/smack/PacketProcessor;->log(Ljava/lang/String;)V

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/PacketProcessor$1;

    invoke-direct {v0, p0}, Lorg/jivesoftware/smack/PacketProcessor$1;-><init>(Lorg/jivesoftware/smack/PacketProcessor;)V

    iput-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->processThread:Ljava/lang/Thread;

    .line 48
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->processThread:Ljava/lang/Thread;

    const-string v1, "Packet Processor"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->processThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 50
    iget-object v0, p0, Lorg/jivesoftware/smack/PacketProcessor;->processThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
