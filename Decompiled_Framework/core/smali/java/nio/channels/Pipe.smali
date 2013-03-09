.class public abstract Ljava/nio/channels/Pipe;
.super Ljava/lang/Object;
.source "Pipe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Pipe$SourceChannel;,
        Ljava/nio/channels/Pipe$SinkChannel;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open()Ljava/nio/channels/Pipe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openPipe()Ljava/nio/channels/Pipe;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract sink()Ljava/nio/channels/Pipe$SinkChannel;
.end method

.method public abstract source()Ljava/nio/channels/Pipe$SourceChannel;
.end method
