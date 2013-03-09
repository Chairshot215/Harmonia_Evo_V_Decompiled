.class public abstract Ljava/nio/channels/Pipe$SourceChannel;
.super Ljava/nio/channels/spi/AbstractSelectableChannel;
.source "Pipe.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;
.implements Ljava/nio/channels/ScatteringByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SourceChannel"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/nio/channels/spi/AbstractSelectableChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    return-void
.end method


# virtual methods
.method public final validOps()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
