.class public interface abstract Lcom/google/android/gsf/gtalkservice/rmq/ReliableMessageQueue;
.super Ljava/lang/Object;
.source "ReliableMessageQueue.java"


# virtual methods
.method public abstract enqueueMessage(JLcom/google/android/gsf/gtalkservice/rmq/RmqPacket;)V
.end method

.method public abstract getNextRmqId()J
.end method

.method public abstract getRmq1Packets()Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
.end method

.method public abstract getRmq2Packets(Ljava/util/List;)Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;"
        }
    .end annotation
.end method

.method public abstract removeMessagesByRmq2Ids(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract removeMessagesUntil(J)V
.end method
