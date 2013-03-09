.class abstract Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;
.super Lcom/scalado/base/Iterator;
.source "SpmoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/speedview/SpmoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseSpmoEncoderStep"
.end annotation


# instance fields
.field protected source:Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;->source:Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;

    return-void
.end method

.method synthetic constructor <init>(Lcom/scalado/caps/speedview/SpmoEncoder$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract begin()V
.end method

.method protected abstract getDestinationStream()Lcom/scalado/stream/Stream;
.end method

.method protected abstract onSuccessorComplete()V
.end method

.method protected abstract setSource(Lcom/scalado/caps/speedview/SpmoEncoder$BaseSpmoEncoderStep;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract setSourceStream(Lcom/scalado/stream/Stream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
