.class public abstract Ljava/nio/channels/SelectableChannel;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "SelectableChannel.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blockingLock()Ljava/lang/Object;
.end method

.method public abstract configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isBlocking()Z
.end method

.method public abstract isRegistered()Z
.end method

.method public abstract keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;
.end method

.method public abstract provider()Ljava/nio/channels/spi/SelectorProvider;
.end method

.method public final register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation
.end method

.method public abstract validOps()I
.end method
