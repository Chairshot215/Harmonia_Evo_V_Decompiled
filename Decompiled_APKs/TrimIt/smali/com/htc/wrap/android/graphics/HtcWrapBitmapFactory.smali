.class public Lcom/htc/wrap/android/graphics/HtcWrapBitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "HtcWrapBitmapFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    return-void
.end method

.method public static HadFileUserData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pathName"
    .parameter "chunkTag"

    .prologue
    .line 12
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->HadFileUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static createBitmap_NativeAlloc(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "config"

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->createBitmap_NativeAlloc(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileUserData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .parameter "pathName"
    .parameter "chunkTag"

    .prologue
    .line 16
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeFileUserData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
