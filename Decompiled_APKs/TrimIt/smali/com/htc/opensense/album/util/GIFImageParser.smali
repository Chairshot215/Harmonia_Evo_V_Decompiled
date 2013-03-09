.class public Lcom/htc/opensense/album/util/GIFImageParser;
.super Ljava/lang/Object;
.source "GIFImageParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GIFImageParser"


# instance fields
.field private nativeContext:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/album/util/GIFImageParser;->value:I

    .line 41
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/GIFImageParser;->nativeBegin()V

    .line 42
    return-void
.end method


# virtual methods
.method public native ComposeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IILandroid/graphics/Rect;II)V
.end method

.method public ComposeBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IILandroid/graphics/Rect;II)V
    .locals 5
    .parameter "bgbitmap"
    .parameter "fgbitmap"
    .parameter "maskbuf"
    .parameter "maskColor"
    .parameter "objrect"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 95
    .local v0, bgConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 96
    .local v1, fgConfig:Landroid/graphics/Bitmap$Config;
    const-string v2, "GIFParser API"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fg bg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    if-eq v0, v1, :cond_0

    .line 101
    invoke-virtual/range {p0 .. p7}, Lcom/htc/opensense/album/util/GIFImageParser;->ComposeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IILandroid/graphics/Rect;II)V

    .line 109
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/htc/opensense/album/util/GIFImageParser;->ComposeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IILandroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public native ComposeFrame([I[I[I[IILandroid/graphics/Rect;II)V
.end method

.method public native ComposeSingleLayerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IILandroid/graphics/Rect;II)V
.end method

.method public ComposeSingleLayerBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IILandroid/graphics/Rect;II)V
    .locals 6
    .parameter "bgbitmap"
    .parameter "fgbitmap"
    .parameter "maskbuf"
    .parameter "maskColor"
    .parameter "objrect"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 119
    .local v0, bgConfig:Landroid/graphics/Bitmap$Config;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 121
    .local v1, fgConfig:Landroid/graphics/Bitmap$Config;
    const-string v2, "GIFParser API"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fg bg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eq v0, v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 130
    :cond_0
    if-nez p5, :cond_1

    .line 132
    new-instance p5, Landroid/graphics/Rect;

    .end local p5
    invoke-direct {p5, v5, v5, p6, p7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    .restart local p5
    :cond_1
    const-string v2, "GIFParser API"

    const-string v3, "ComposeSingleLayerBitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual/range {p0 .. p7}, Lcom/htc/opensense/album/util/GIFImageParser;->ComposeSingleLayerBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IILandroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public native GetValue()I
.end method

.method public Release()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/GIFImageParser;->nativeRelease()V

    .line 57
    return-void
.end method

.method public native SetData(Ljava/lang/String;)V
.end method

.method public native Setup(I)V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/htc/opensense/album/util/GIFImageParser;->nativeRelease()V

    return-void
.end method

.method public native frameBufferAtIndex(I)[I
.end method

.method public native frameCount()I
.end method

.method public native frameDurationAtIndex(I)J
.end method

.method public native frameRectAtIndex(I)Landroid/graphics/Rect;
.end method

.method public native nativeAllocFrameBitmap()Landroid/graphics/Bitmap;
.end method

.method public native nativeBegin()V
.end method

.method public native nativeGetFrameBitmap(ILandroid/graphics/Bitmap;)I
.end method

.method public native nativeGetFrameBuffer(I)[I
.end method

.method public native nativeGetFrameBuffer2(I[II)I
.end method

.method public native nativeRelease()V
.end method

.method public native repetitionCount()I
.end method

.method public native setRawData([B)V
.end method

.method public native size()Landroid/graphics/Rect;
.end method
