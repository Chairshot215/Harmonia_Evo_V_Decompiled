.class public Lorg/jivesoftware/smack/DataMessageCollector;
.super Lorg/jivesoftware/smack/PacketCollector;
.source "DataMessageCollector.java"


# direct methods
.method public constructor <init>(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .parameter "packetReader"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/jivesoftware/smack/PacketCollector;-><init>(Lorg/jivesoftware/smack/PacketReader;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected addToCollectorList()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lorg/jivesoftware/smack/DataMessageCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v1, v0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smack/DataMessageCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v0, v0, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected declared-synchronized processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4
    .parameter "packet"

    .prologue
    const/16 v2, 0x400

    .line 36
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Lorg/jivesoftware/smack/packet/DataMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 41
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/jivesoftware/smack/DataMessageCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 42
    iget-object v1, p0, Lorg/jivesoftware/smack/DataMessageCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Packet;

    .line 43
    .local v0, remove:Lorg/jivesoftware/smack/packet/Packet;
    const-string v1, "Smack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataMessageCollector] processPacket: drop packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", queue size exceeded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 48
    .end local v0           #remove:Lorg/jivesoftware/smack/packet/Packet;
    :cond_2
    iget-object v1, p0, Lorg/jivesoftware/smack/DataMessageCollector;->resultQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected removeFromCollectorList()V
    .locals 4

    .prologue
    .line 29
    iget-object v1, p0, Lorg/jivesoftware/smack/DataMessageCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v2, v1, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    monitor-enter v2

    .line 30
    :try_start_0
    iget-object v1, p0, Lorg/jivesoftware/smack/DataMessageCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v1, v1, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 31
    .local v0, index:I
    iget-object v1, p0, Lorg/jivesoftware/smack/DataMessageCollector;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    iget-object v1, v1, Lorg/jivesoftware/smack/PacketReader;->dataMessageCollectors:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 32
    monitor-exit v2

    .line 33
    return-void

    .line 32
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
