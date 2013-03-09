.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# static fields
.field private static final EXTERNALDIR:Ljava/lang/String;

.field private static final REMOVABLEDIR:Ljava/lang/String;

.field static enable_restorable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/graphics/BitmapFactory;->enable_restorable:Z

    invoke-static {}, Landroid/os/Environment;->getRemovableStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/BitmapFactory;->REMOVABLEDIR:Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/BitmapFactory;->EXTERNALDIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HadFileUserData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "BitmapFactory"

    const-string v3, "Wrong chunk"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->nativeHadFileUserData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BitmapFactory"

    const-string v3, "decode native Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createBitmap_NativeAlloc(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    iget v1, p2, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {p0, p1, v1}, Landroid/graphics/BitmapFactory;->nativeCreateBitmap_NativeAlloc(III)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_0
    return-object v0
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    or-int v1, p1, p2

    if-ltz v1, :cond_0

    array-length v1, p0

    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem decoding into existing bitmap"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v2, Landroid/graphics/BitmapFactory;->enable_restorable:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->isStorageUnmountable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_2

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :try_start_1
    #setter for: Landroid/graphics/BitmapFactory$Options;->isRestorable:Z
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory$Options;->access$002(Landroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, v2, p1}, Landroid/graphics/BitmapFactory;->nativeDecodeFile(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRestorable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p0}, Landroid/graphics/Bitmap;->setRestoreInfo(Ljava/lang/String;)V

    :cond_1
    invoke-static {v0, v3, p1}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_3
    iget-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    #setter for: Landroid/graphics/BitmapFactory$Options;->isRestorable:Z
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory$Options;->access$002(Landroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move-object p1, v1

    goto :goto_1
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 4

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->nativeIsSeekable(Ljava/io/FileDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem decoding into existing bitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-static {v1, p1, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    throw v2

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public static decodeFileUserData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "BitmapFactory"

    const-string v3, "Wrong chunk"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->nativeDecodeFileWithUserData(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BitmapFactory"

    const-string v3, "decode native Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v11, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    const/4 v12, 0x1

    invoke-virtual {p0, p1, v10, v12}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget-object v10, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget-object v10, v10, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    iget-object v12, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget v12, v12, Landroid/util/TypedValue;->assetCookie:I

    invoke-virtual {v10, v12}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v10, Landroid/util/TypedValue;->assetCookie:I

    if-nez p2, :cond_0

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object p2, v9

    :cond_0
    iget v10, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v10, :cond_1

    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    iget v5, v10, Landroid/util/TypedValue;->density:I

    if-nez v5, :cond_6

    const/16 v10, 0xa0

    iput v10, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_1
    :goto_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v10, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v10, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v10, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_2
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v1, v4, v7}, Landroid/content/res/AssetManager;->openNativeNonAsset(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    #setter for: Landroid/graphics/BitmapFactory$Options;->isPreloading:Z
    invoke-static {p2, v10}, Landroid/graphics/BitmapFactory$Options;->access$102(Landroid/graphics/BitmapFactory$Options;Z)Z

    :cond_3
    :goto_1
    const/4 v10, 0x0

    invoke-static {v0, v10, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/graphics/Bitmap;->setRestoreInfo(Ljava/lang/String;)V

    :cond_4
    const/4 v10, 0x0

    invoke-static {v2, v10, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->closeNativeNonAsset(I)V

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    iget-object v10, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Problem decoding into existing bitmap"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    :try_start_2
    const-string v10, "BitmapFactory"

    const-string/jumbo v12, "res.mTmpValue.string is null, return null bitmap"

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    move-object v3, v2

    :goto_3
    return-object v3

    :cond_6
    const v10, 0xffff

    if-eq v5, v10, :cond_1

    iput v5, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    :cond_7
    :try_start_3
    sget-boolean v10, Landroid/graphics/BitmapFactory;->enable_restorable:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v10, :cond_3

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-boolean v10, p2, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    if-nez v10, :cond_3

    const/4 v10, 0x1

    #setter for: Landroid/graphics/BitmapFactory$Options;->isRestorable:Z
    invoke-static {p2, v10}, Landroid/graphics/BitmapFactory$Options;->access$002(Landroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_4
    const-string v10, "BitmapFactory"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v10

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->closeNativeNonAsset(I)V

    throw v10

    :cond_8
    move-object v3, v2

    goto :goto_3
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 11

    if-nez p4, :cond_0

    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :cond_0
    iget v8, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v8, :cond_1

    if-eqz p1, :cond_1

    iget v4, p1, Landroid/util/TypedValue;->density:I

    if-nez v4, :cond_5

    const/16 v8, 0xa0

    iput v8, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    :cond_1
    :goto_0
    iget v8, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v8, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v8, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    :cond_2
    const/4 v2, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v8, :cond_7

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget v3, p1, Landroid/util/TypedValue;->assetCookie:I

    iget-object v8, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->getCookieName(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v6}, Landroid/content/res/AssetManager;->openNativeNonAsset(ILjava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    #setter for: Landroid/graphics/BitmapFactory$Options;->isPreloading:Z
    invoke-static {p4, v8}, Landroid/graphics/BitmapFactory$Options;->access$102(Landroid/graphics/BitmapFactory$Options;Z)Z

    :cond_3
    :goto_1
    invoke-static {v0, p3, p4}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/graphics/Bitmap;->setRestoreInfo(Ljava/lang/String;)V

    :cond_4
    invoke-static {v2, p3, p4}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->closeNativeNonAsset(I)V

    :goto_3
    return-object v2

    :cond_5
    const v8, 0xffff

    if-eq v4, v8, :cond_1

    iput v4, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    :cond_6
    :try_start_1
    sget-boolean v8, Landroid/graphics/BitmapFactory;->enable_restorable:Z

    if-eqz v8, :cond_3

    iget-boolean v8, p4, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez v8, :cond_3

    invoke-static {}, Lcom/htc/htcjavaflag/HtcUtility;->isBitmapReleaseEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p4, Landroid/graphics/BitmapFactory$Options;->inNativeAlloc:Z

    if-nez v8, :cond_3

    const/4 v8, 0x1

    #setter for: Landroid/graphics/BitmapFactory$Options;->isRestorable:Z
    invoke-static {p4, v8}, Landroid/graphics/BitmapFactory$Options;->access$002(Landroid/graphics/BitmapFactory$Options;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    const-string v8, "BitmapFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "decodeResourceStream failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->closeNativeNonAsset(I)V

    throw v8

    :cond_7
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5

    const/16 v4, 0x4000

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p0, v1

    :cond_1
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    instance-of v3, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v3, :cond_2

    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v3

    invoke-static {v3, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    iget-object v3, p2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Problem decoding into existing bitmap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/4 v2, 0x0

    if-eqz p2, :cond_3

    iget-object v2, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    :cond_3
    if-nez v2, :cond_4

    new-array v2, v4, [B

    :cond_4
    invoke-static {p0, v2, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_5
    invoke-static {v0, p1, p2}, Landroid/graphics/BitmapFactory;->finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private static finishDecode(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v6, 0x1

    const/high16 v9, 0x3f00

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isPurgeable()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRestorable()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    iget v5, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v5, :cond_0

    if-eq v0, v5, :cond_0

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-eq v0, v7, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v7

    if-eqz v7, :cond_4

    move v1, v6

    :goto_1
    iget-boolean v7, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v7, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    int-to-float v7, v5

    int-to-float v8, v0

    div-float v4, v7, v8

    move-object v3, p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v3, v7, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v1, :cond_3

    invoke-static {v2, v4, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    :cond_3
    invoke-virtual {p0, v5}, Landroid/graphics/Bitmap;->setDensity(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isStorageUnmountable(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    sget-object v3, Landroid/graphics/BitmapFactory;->REMOVABLEDIR:Ljava/lang/String;

    sget-object v0, Landroid/graphics/BitmapFactory;->REMOVABLEDIR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v3, Landroid/graphics/BitmapFactory;->EXTERNALDIR:Ljava/lang/String;

    sget-object v0, Landroid/graphics/BitmapFactory;->EXTERNALDIR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static native nativeCreateBitmap_NativeAlloc(III)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFile(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileWithUserData(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeHadFileUserData(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native nativeIsSeekable(Ljava/io/FileDescriptor;)Z
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method

.method private static native nativeSetDefaultConfig(I)V
.end method

.method public static setDefaultConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_0
    iget v0, p0, Landroid/graphics/Bitmap$Config;->nativeInt:I

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->nativeSetDefaultConfig(I)V

    return-void
.end method
