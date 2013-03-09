.class Lorg/jivesoftware/smack/PacketWriter$2;
.super Ljava/lang/Object;
.source "PacketWriter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/PacketWriter;->sendHeartbeat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PacketWriter;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/PacketWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 210
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    #setter for: Lorg/jivesoftware/smack/PacketWriter;->lastActive:J
    invoke-static {v4, v5, v6}, Lorg/jivesoftware/smack/PacketWriter;->access$102(Lorg/jivesoftware/smack/PacketWriter;J)J

    .line 211
    const-string v4, "Smack/Packet"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    const-string v4, "Smack/Packet"

    const-string v5, "PacketWriter sending heartbeat"

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v4}, Lorg/jivesoftware/smack/PacketWriter;->access$200(Lorg/jivesoftware/smack/PacketWriter;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getRmq2Manager()Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-result-object v3

    .line 219
    .local v3, rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    if-eqz v3, :cond_1

    .line 220
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->serializer:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;
    invoke-static {v4}, Lorg/jivesoftware/smack/PacketWriter;->access$300(Lorg/jivesoftware/smack/PacketWriter;)Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;

    move-result-object v4

    new-instance v5, Lorg/jivesoftware/smack/packet/HeartbeatPing;

    invoke-direct {v5}, Lorg/jivesoftware/smack/packet/HeartbeatPing;-><init>()V

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->serializePacketAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;Lorg/jivesoftware/smack/packet/Packet;)[B

    move-result-object v2

    .line 226
    .local v2, pingBytes:[B
    :goto_0
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;
    invoke-static {v4}, Lorg/jivesoftware/smack/PacketWriter;->access$500(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/OutputStream;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :try_start_1
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;
    invoke-static {v4}, Lorg/jivesoftware/smack/PacketWriter;->access$500(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    .line 228
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->writer:Ljava/io/OutputStream;
    invoke-static {v4}, Lorg/jivesoftware/smack/PacketWriter;->access$500(Lorg/jivesoftware/smack/PacketWriter;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 229
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :try_start_2
    array-length v4, v2

    int-to-long v4, v4

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->updateHeartbeat(JZ)V

    .line 238
    .end local v2           #pingBytes:[B
    .end local v3           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :goto_1
    return-void

    .line 223
    .restart local v3       #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :cond_1
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->heartbeatPingBytes:[B
    invoke-static {v4}, Lorg/jivesoftware/smack/PacketWriter;->access$400(Lorg/jivesoftware/smack/PacketWriter;)[B
    :try_end_2
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .restart local v2       #pingBytes:[B
    goto :goto_0

    .line 229
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 231
    .end local v2           #pingBytes:[B
    .end local v3           #rmq2Mgr:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
    :catch_0
    move-exception v1

    .line 232
    .local v1, pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write heartbeat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v4}, Lorg/jivesoftware/smack/PacketWriter;->access$200(Lorg/jivesoftware/smack/PacketWriter;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    iget-object v4, v4, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4, v1}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 234
    .end local v1           #pbse:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;
    :catch_1
    move-exception v0

    .line 235
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Smack/Packet"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write heartbeat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v4, p0, Lorg/jivesoftware/smack/PacketWriter$2;->this$0:Lorg/jivesoftware/smack/PacketWriter;

    #getter for: Lorg/jivesoftware/smack/PacketWriter;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v4}, Lorg/jivesoftware/smack/PacketWriter;->access$200(Lorg/jivesoftware/smack/PacketWriter;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v4

    iget-object v4, v4, Lorg/jivesoftware/smack/XMPPConnection;->packetReader:Lorg/jivesoftware/smack/PacketReader;

    invoke-virtual {v4, v0}, Lorg/jivesoftware/smack/PacketReader;->notifyConnectionError(Ljava/lang/Exception;)V

    goto :goto_1
.end method
