.class public Lcom/htc/wrap/android/graphics/HtcWrapBitmap;
.super Ljava/lang/Object;
.source "HtcWrapBitmap.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;Ljava/lang/String;[BI)Z
    .locals 1
    .parameter "bitmap"
    .parameter "format"
    .parameter "quality"
    .parameter "stream"
    .parameter "chunktag"
    .parameter "userdata"
    .parameter "len"

    .prologue
    .line 15
    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;Ljava/lang/String;[BI)Z

    move-result v0

    return v0
.end method

.method public static compress(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;[BI)Z
    .locals 1
    .parameter "bitmap"
    .parameter "format"
    .parameter "quality"
    .parameter "szAbolutePath"
    .parameter "chunktag"
    .parameter "userdata"
    .parameter "len"

    .prologue
    .line 19
    invoke-virtual/range {p0 .. p6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;[BI)Z

    move-result v0

    return v0
.end method
