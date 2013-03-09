.class public final Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;
.super Ljava/lang/Object;
.source "JpegDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/codec/decoder/JpegDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DecodeMode"
.end annotation


# static fields
.field public static final HIGHEST_QUALITY:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

.field public static final NORMAL:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

.field public static final QUALITY:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

.field public static final SPEED:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->HIGHEST_QUALITY:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    .line 36
    new-instance v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->QUALITY:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    .line 42
    new-instance v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->NORMAL:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    .line 48
    new-instance v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->SPEED:Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/scalado/caps/codec/decoder/JpegDecoder$DecodeMode;->value:I

    .line 23
    return-void
.end method
