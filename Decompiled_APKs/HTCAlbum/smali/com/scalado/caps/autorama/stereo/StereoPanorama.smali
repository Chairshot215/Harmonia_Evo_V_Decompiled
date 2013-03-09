.class public abstract Lcom/scalado/caps/autorama/stereo/StereoPanorama;
.super Lcom/scalado/caps/PeerBase;
.source "StereoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scalado/caps/autorama/stereo/StereoPanorama$1;,
        Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;,
        Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;
    }
.end annotation


# instance fields
.field private decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

.field private decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/scalado/caps/PeerBase;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    .line 37
    iput-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    return-void
.end method

.method private native nativeRender()I
.end method


# virtual methods
.method public getLeftDecoder()Lcom/scalado/caps/Decoder;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    return-object v0
.end method

.method public getRightDecoder()Lcom/scalado/caps/Decoder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    return-object v0
.end method

.method public render()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    if-eqz v1, :cond_1

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v1

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->nativeRender()I

    move-result v0

    .line 55
    .local v0, res:I
    new-instance v1, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    sget-object v2, Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;->IS_LEFT:Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;-><init>(Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;Lcom/scalado/caps/autorama/stereo/StereoPanorama$1;)V

    iput-object v1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderLeft:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    .line 56
    new-instance v1, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    sget-object v2, Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;->IS_RIGHT:Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;-><init>(Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama;Lcom/scalado/caps/autorama/stereo/StereoPanorama$DecoderSide;Lcom/scalado/caps/autorama/stereo/StereoPanorama$1;)V

    iput-object v1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanorama;->decoderRight:Lcom/scalado/caps/autorama/stereo/StereoPanorama$StereoPanoramaDecoder;

    .line 57
    return-void
.end method
