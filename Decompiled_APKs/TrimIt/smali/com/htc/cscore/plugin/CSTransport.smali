.class public interface abstract Lcom/htc/cscore/plugin/CSTransport;
.super Ljava/lang/Object;
.source "CSTransport.java"


# static fields
.field public static final TRANSPORT_DL:I = 0x2

.field public static final TRANSPORT_UL:I = 0x1


# virtual methods
.method public abstract getDirection()I
.end method

.method public abstract getRemainingPushCnt()I
.end method

.method public abstract readSyncMessage()Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;
.end method

.method public abstract writeSyncMessage(Lcom/htc/cscore/transport/SyncProtocol$HSyncMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method
