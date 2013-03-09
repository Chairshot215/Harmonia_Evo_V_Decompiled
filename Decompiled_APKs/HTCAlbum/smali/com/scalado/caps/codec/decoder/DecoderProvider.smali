.class public abstract Lcom/scalado/caps/codec/decoder/DecoderProvider;
.super Ljava/lang/Object;
.source "DecoderProvider.java"


# static fields
.field protected static final BMP_FORMAT:I = 0x5

.field protected static final GIF_FORMAT:I = 0x4

.field protected static final JPEG_FORMAT:I = 0x1

.field protected static final JPS_FORMAT:I = 0x2

.field protected static final PNG_FORMAT:I = 0x3

.field protected static final TIFF_FORMAT:I = 0x7

.field protected static final WBMP_FORMAT:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract checkImageType(I)Z
.end method

.method protected abstract create(Lcom/scalado/stream/Stream;)Lcom/scalado/base/Iterator;
.end method
