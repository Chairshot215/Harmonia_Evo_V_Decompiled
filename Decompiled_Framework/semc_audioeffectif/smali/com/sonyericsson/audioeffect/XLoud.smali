.class public Lcom/sonyericsson/audioeffect/XLoud;
.super Landroid/media/audiofx/AudioEffect;
.source "XLoud.java"


# static fields
.field public static final EFFECT_TYPE_XLOUD:Ljava/util/UUID; = null

.field public static final PARAM_DELAY:I = 0x1

.field private static final PARAM_MAXIMUM_STRENGTH:I = 0x6

.field public static final PARAM_STRENGTH_LEVEL:I = 0x0

.field public static final PARAM_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "XLoud"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "46af9240-dd14-11df-ae36-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/audioeffect/XLoud;->EFFECT_TYPE_XLOUD:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    sget-object v0, Lcom/sonyericsson/audioeffect/XLoud;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Lcom/sonyericsson/audioeffect/XLoud;->EFFECT_TYPE_XLOUD:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method


# virtual methods
.method public getMaximumStrength()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getStrength()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [I

    invoke-virtual {p0, v2, v0}, Lcom/sonyericsson/audioeffect/XLoud;->getParameter(I[I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/audioeffect/XLoud;->checkStatus(I)V

    aget v1, v0, v2

    return v1
.end method

.method public setStrength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/audioeffect/XLoud;->setParameter(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/audioeffect/XLoud;->checkStatus(I)V

    return-void
.end method
