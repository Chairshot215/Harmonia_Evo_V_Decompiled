.class Lcom/scalado/caps/speedview/SpmoDecoder$SpmoDecoderIterator;
.super Lcom/scalado/base/Iterator;
.source "SpmoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/speedview/SpmoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpmoDecoderIterator"
.end annotation


# instance fields
.field private decoder:Lcom/scalado/caps/speedview/SpmoDecoder;


# direct methods
.method constructor <init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;)V
    .locals 2
    .parameter "jpegStream"
    .parameter "spmoStream"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/scalado/base/Iterator;-><init>()V

    .line 32
    new-instance v0, Lcom/scalado/caps/speedview/SpmoDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/scalado/caps/speedview/SpmoDecoder;-><init>(Lcom/scalado/stream/Stream;Lcom/scalado/stream/Stream;Lcom/scalado/caps/speedview/SpmoDecoder$1;)V

    iput-object v0, p0, Lcom/scalado/caps/speedview/SpmoDecoder$SpmoDecoderIterator;->decoder:Lcom/scalado/caps/speedview/SpmoDecoder;

    .line 33
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scalado/caps/speedview/SpmoDecoder$SpmoDecoderIterator;->decoder:Lcom/scalado/caps/speedview/SpmoDecoder;

    return-object v0
.end method

.method public step()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v0
.end method
