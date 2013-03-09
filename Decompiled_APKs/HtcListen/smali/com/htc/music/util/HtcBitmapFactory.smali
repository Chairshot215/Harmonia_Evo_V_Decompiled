.class public Lcom/htc/music/util/HtcBitmapFactory;
.super Landroid/graphics/BitmapFactory;
.source "HtcBitmapFactory.java"


# static fields
.field private static mIsReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z

    :try_start_0
    const-string v2, "htcbitmapfactory"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sput-boolean v3, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z

    goto :goto_0

    :catch_1
    move-exception v0

    sput-boolean v3, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/BitmapFactory;-><init>()V

    return-void
.end method

.method public static native createScaledBitmapWithReflection(Ljava/lang/String;III)Landroid/graphics/Bitmap;
.end method

.method public static isReady()Z
    .locals 1

    sget-boolean v0, Lcom/htc/music/util/HtcBitmapFactory;->mIsReady:Z

    return v0
.end method

.method public static native mergeFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
.end method

.method public static native mergeFile(Landroid/graphics/Bitmap;Ljava/lang/String;IIIII)Landroid/graphics/Bitmap;
.end method

.method public static native mergeFile(Ljava/lang/String;Ljava/lang/String;IIII)Landroid/graphics/Bitmap;
.end method

.method public static native reattachBMP(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method
