.class public Lcom/scalado/caps/codec/decoder/ColorDecoder;
.super Lcom/scalado/caps/Decoder;
.source "ColorDecoder.java"


# direct methods
.method public constructor <init>(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)V
    .locals 3

    invoke-direct {p0}, Lcom/scalado/caps/Decoder;-><init>()V

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Image is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Dimensions is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/scalado/caps/codec/decoder/ColorDecoder;->nativeCreate(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)I

    move-result v0

    return-void
.end method

.method private native nativeCreate(Lcom/scalado/base/Color;Lcom/scalado/base/Size;)I
.end method
